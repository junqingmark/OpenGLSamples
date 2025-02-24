//----------------------------------------------------------------------------------
// File:        ComputeWaterSimulation/assets/shaders/renderVS.glsl
// SDK Version: v1.2 
// Email:       gameworks@nvidia.com
// Site:        http://developer.nvidia.com/
//
// Copyright (c) 2014, NVIDIA CORPORATION. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions
// are met:
//  * Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//  * Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//  * Neither the name of NVIDIA CORPORATION nor the names of its
//    contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
// PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
// CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
// EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
// PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
// OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//----------------------------------------------------------------------------------
#version 430

#UNIFORMS

layout(location=0) in vec4 position;
layout(location=1) in vec4 color;

layout( std140, binding=1 ) buffer Pos {
    vec4 pos[];
};

out gl_PerVertex {
    vec4 gl_Position;
};

out block {
     vec4 color;
     vec2 texCoord;
} Out;

void main() {
    Out.color = color;

#if 1
    // expand points to quads without using GS
    int particleID = gl_VertexID >> 2; // 4 vertices per particle
    //int particleID = gl_VertexID;
    vec4 particlePos = pos[particleID];

    //map vertex ID to quad vertex
    vec2 quadPos = vec2( ((gl_VertexID - 1) & 2) >> 1, (gl_VertexID & 2) >> 1);

    vec4 particlePosEye = ModelView * particlePos;
    vec4 vertexPosEye = particlePosEye + vec4((quadPos*2.0-1.0)*spriteSize, 0, 0);

    Out.texCoord = quadPos;
    gl_Position = ProjectionMatrix * vertexPosEye;
    //gl_Position = ModelViewProjection * particlePos;
#else
    Out.texCoord = vec2(0, 0);

    gl_Position = ModelViewProjection * position;
#endif
}
