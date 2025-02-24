//----------------------------------------------------------------------------------
// File:        ParticleUpsampling/SceneInfo.h
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

#ifndef SCENE_INFO_H
#define SCENE_INFO_H

#include "NvFoundation.h"
#include "NV/NvMath.h"

using namespace nv;

#define EYE_FOVY_DEG 40.f
#define EYE_ZNEAR 1.0f
#define EYE_ZFAR 100.0f

#define LIGHT_FOVY_DEG 40.f
#define LIGHT_ZNEAR 0.1f
#define LIGHT_ZFAR 100.0f

class SceneFBOs;

class SceneInfo
{
public:
    void setLightVector(vec3f v)
    {
         m_lightVector = normalize(v);
    }

    void setLightDistance(float d)
    {
        m_lightDistance = d;
    }

    void setScreenSize(int32_t width, int32_t height)
    {
        m_screenWidth = width;
        m_screenHeight = height;
        nv::perspective(m_eyeProj, EYE_FOVY_DEG * (NV_PI / 180.0f), (float)width / (float)height, EYE_ZNEAR, EYE_ZFAR);
    }

    void calcVectors()
    {
        // calculate half-angle vector between view and light
        m_viewVector = -vec3f(m_eyeView.get_row(2));
        if (dot(m_viewVector, m_lightVector) > 0)
        {
            m_halfVector = normalize(m_viewVector + m_lightVector);
            m_invertedView = false;
        }
        else
        {
            m_halfVector = normalize(-m_viewVector + m_lightVector);
            m_invertedView = true;
        }

        // build light matrices
        m_lightPos = m_lightVector * m_lightDistance;
        m_lightPosEye = m_eyeView * vec4f(m_lightPos, 1.0);

        nv::lookAt(m_lightView, nv::vec3f(m_lightPos[0], m_lightPos[1], m_lightPos[2]), nv::vec3f(0.0, 0.0, 0.0), nv::vec3f(0.0, 1.0, 0.0));
        nv::perspective(m_lightProj, LIGHT_FOVY_DEG * (NV_PI / 180.0f), 1.0f, LIGHT_ZNEAR, LIGHT_ZFAR);

        // construct shadow matrix
        nv::matrix4f scale;
        scale.set_scale(nv::vec3f(0.5, 0.5, 0.5));
        nv::matrix4f translate;
        translate.set_translate(nv::vec3f(0.5, 0.5, 0.5));

        m_shadowMatrix = translate * scale * m_lightProj * m_lightView * inverse(m_eyeView);

        // calc object space eye position
        m_eyePos = nv::inverse(m_eyeView) * nv::vec4f(0.0, 0.0, 0.0, 1.0);

        // calc half vector in eye space
        m_halfVectorEye = m_eyeView * nv::vec4f(m_halfVector, 0.0);
    }

    nv::vec3f m_lightVector;
    nv::vec3f m_lightPos;
    float m_lightDistance;
    nv::matrix4f m_lightView;
    nv::matrix4f m_lightProj;
    nv::matrix4f m_shadowMatrix;
    nv::matrix4f m_eyeView;
    nv::matrix4f m_eyeProj;
    nv::vec3f m_viewVector;
    nv::vec3f m_halfVector;
    bool m_invertedView;
    nv::vec4f m_eyePos;
    nv::vec4f m_halfVectorEye;
    nv::vec4f m_lightPosEye;
    int32_t m_screenWidth;
    int32_t m_screenHeight;
    SceneFBOs *m_fbos;
};

#endif //SCENE_INFO_H

