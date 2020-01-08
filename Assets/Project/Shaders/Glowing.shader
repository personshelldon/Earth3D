// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:3,bsrc:0,bdst:6,culm:1,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:5292,x:33514,y:32558,varname:node_5292,prsc:2|emission-4338-OUT;n:type:ShaderForge.SFN_Fresnel,id:2665,x:32041,y:32580,varname:node_2665,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:7304,x:32220,y:32580,varname:node_7304,prsc:2|IN-2665-OUT;n:type:ShaderForge.SFN_LightVector,id:8705,x:32043,y:32861,varname:node_8705,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:3883,x:32043,y:33019,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7754,x:32248,y:32950,varname:node_7754,prsc:2,dt:0|A-8705-OUT,B-3883-OUT;n:type:ShaderForge.SFN_Multiply,id:4338,x:33021,y:32577,varname:node_4338,prsc:2|A-7304-OUT,B-5701-RGB,C-7919-OUT;n:type:ShaderForge.SFN_OneMinus,id:4396,x:32420,y:32920,varname:node_4396,prsc:2|IN-7754-OUT;n:type:ShaderForge.SFN_Color,id:5701,x:32220,y:32749,ptovrint:False,ptlb:Glow Color,ptin:_GlowColor,varname:node_5701,prsc:2,glob:False,c1:0.5019608,c2:0.5019608,c3:1,c4:1;n:type:ShaderForge.SFN_Exp,id:9327,x:32312,y:33134,varname:node_9327,prsc:2,et:0|IN-2051-OUT;n:type:ShaderForge.SFN_RemapRange,id:2051,x:32096,y:33228,varname:node_2051,prsc:2,frmn:0,frmx:1,tomn:5,tomx:-1|IN-8001-OUT;n:type:ShaderForge.SFN_Slider,id:8001,x:31713,y:33263,ptovrint:False,ptlb:Hardness,ptin:_Hardness,varname:node_8001,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Power,id:9848,x:32788,y:32899,varname:node_9848,prsc:2|VAL-1504-OUT,EXP-9327-OUT;n:type:ShaderForge.SFN_Clamp,id:7919,x:33028,y:32899,varname:node_7919,prsc:2|IN-9848-OUT,MIN-8917-OUT,MAX-5761-OUT;n:type:ShaderForge.SFN_Slider,id:9509,x:32657,y:33413,ptovrint:False,ptlb:Power,ptin:_Power,varname:node_9509,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:5761,x:32993,y:33244,varname:node_5761,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-9509-OUT;n:type:ShaderForge.SFN_Vector1,id:8917,x:32788,y:33057,varname:node_8917,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1504,x:32623,y:33162,varname:node_1504,prsc:2|A-4396-OUT,B-8960-OUT;n:type:ShaderForge.SFN_Slider,id:2193,x:31801,y:33477,ptovrint:False,ptlb:Alpha,ptin:_Alpha,varname:node_2193,prsc:2,min:0,cur:0.6423458,max:1;n:type:ShaderForge.SFN_RemapRange,id:8960,x:32204,y:33467,varname:node_8960,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-2193-OUT;proporder:5701-8001-9509-2193;pass:END;sub:END;*/

Shader "Shader Forge/Glowing" {
    Properties {
        _GlowColor ("Glow Color", Color) = (0.5019608,0.5019608,1,1)
        _Hardness ("Hardness", Range(0, 1)) = 0
        _Power ("Power", Range(0, 1)) = 1
        _Alpha ("Alpha", Range(0, 1)) = 0.6423458
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcColor
            Cull Front
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _GlowColor;
            uniform float _Hardness;
            uniform float _Power;
            uniform float _Alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(_Object2World, float4(-v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float3 emissive = ((1.0 - (1.0-max(0,dot(normalDirection, viewDirection))))*_GlowColor.rgb*clamp(pow(((1.0 - dot(lightDirection,i.normalDir))*(_Alpha*2.0+0.0)),exp((_Hardness*-6.0+5.0))),0.0,(_Power*10.0+0.0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Front
            ZWrite Off
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            // Dithering function, to use with scene UVs (screen pixel coords)
            // 3x3 Bayer matrix, based on https://en.wikipedia.org/wiki/Ordered_dithering
            float BinaryDither3x3( float value, float2 sceneUVs ) {
                float3x3 mtx = float3x3(
                    float3( 3,  7,  4 )/10.0,
                    float3( 6,  1,  9 )/10.0,
                    float3( 2,  8,  5 )/10.0
                );
                float2 px = floor(_ScreenParams.xy * sceneUVs);
                int xSmp = fmod(px.x,3);
                int ySmp = fmod(px.y,3);
                float3 xVec = 1-saturate(abs(float3(0,1,2) - xSmp));
                float3 yVec = 1-saturate(abs(float3(0,1,2) - ySmp));
                float3 pxMult = float3( dot(mtx[0],yVec), dot(mtx[1],yVec), dot(mtx[2],yVec) );
                return round(value + dot(pxMult, xVec));
            }
            uniform float4 _GlowColor;
            uniform float _Hardness;
            uniform float _Power;
            uniform float _Alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 screenPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(_Object2World, float4(-v.normal,0)).xyz;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
