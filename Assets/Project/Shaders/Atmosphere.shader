// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:1,bsrc:3,bdst:7,culm:0,dpts:2,wrdp:False,dith:2,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34543,y:32556,varname:node_1,prsc:2|diff-887-OUT,normal-3-RGB,lwrap-8789-OUT,alpha-8842-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:33853,y:32997,ptovrint:False,ptlb:Clouds,ptin:_Clouds,varname:node_3705,prsc:2,tex:5afa6e51c06a24f47bd4890a964ec655,ntxv:2,isnm:False|UVIN-43-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:3,x:33853,y:32764,ptovrint:False,ptlb:Clouds Normal,ptin:_CloudsNormal,varname:node_197,prsc:2,tex:288ffa06c00e02e44bbd20b933a9f45f,ntxv:3,isnm:True|UVIN-43-UVOUT;n:type:ShaderForge.SFN_Time,id:38,x:33275,y:32875,varname:node_38,prsc:2;n:type:ShaderForge.SFN_Multiply,id:39,x:33456,y:32997,varname:node_39,prsc:2|A-38-T,B-40-OUT;n:type:ShaderForge.SFN_RemapRange,id:40,x:33249,y:33048,varname:node_40,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-41-OUT;n:type:ShaderForge.SFN_Slider,id:41,x:32894,y:33083,ptovrint:False,ptlb:CloudsSpeed,ptin:_CloudsSpeed,varname:node_6265,prsc:2,min:0,cur:0.05,max:1;n:type:ShaderForge.SFN_Panner,id:43,x:33642,y:32997,varname:node_43,prsc:2,spu:0.01,spv:0|DIST-39-OUT;n:type:ShaderForge.SFN_LightVector,id:71,x:32934,y:32254,varname:node_71,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:72,x:32934,y:32390,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:82,x:33193,y:32337,varname:node_82,prsc:2,dt:0|A-71-OUT,B-72-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4466,x:34068,y:32997,varname:node_4466,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2-RGB;n:type:ShaderForge.SFN_Color,id:8717,x:33765,y:32154,ptovrint:False,ptlb:Clouds Color,ptin:_CloudsColor,varname:node_8717,prsc:2,glob:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:8789,x:33556,y:32714,ptovrint:False,ptlb:Light Wrapping,ptin:_LightWrapping,varname:node_8789,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:7809,x:33785,y:32327,varname:node_7809,prsc:2|A-82-OUT,B-8789-OUT;n:type:ShaderForge.SFN_Multiply,id:4067,x:34055,y:32327,varname:node_4067,prsc:2|A-8717-RGB,B-7809-OUT;n:type:ShaderForge.SFN_Clamp,id:887,x:34258,y:32460,varname:node_887,prsc:2|IN-4067-OUT,MIN-8163-OUT,MAX-6562-OUT;n:type:ShaderForge.SFN_Slider,id:5328,x:33535,y:32605,ptovrint:False,ptlb:Clamp Light,ptin:_ClampLight,varname:node_5328,prsc:2,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:8163,x:34027,y:32631,varname:node_8163,prsc:2,v1:0;n:type:ShaderForge.SFN_RemapRange,id:6562,x:33927,y:32447,varname:node_6562,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-5328-OUT;n:type:ShaderForge.SFN_Slider,id:216,x:33989,y:32852,ptovrint:False,ptlb:Visibility,ptin:_Visibility,varname:node_216,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:8842,x:34353,y:32903,varname:node_8842,prsc:2|A-216-OUT,B-4466-OUT;proporder:2-3-41-8717-8789-5328-216;pass:END;sub:END;*/

Shader "Shader Forge/Atmosphere" {
    Properties {
        _Clouds ("Clouds", 2D) = "black" {}
        _CloudsNormal ("Clouds Normal", 2D) = "bump" {}
        _CloudsSpeed ("CloudsSpeed", Range(0, 1)) = 0.05
        _CloudsColor ("Clouds Color", Color) = (1,1,1,1)
        _LightWrapping ("Light Wrapping", Range(0, 1)) = 0
        _ClampLight ("Clamp Light", Range(0, 1)) = 0
        _Visibility ("Visibility", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
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
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform sampler2D _CloudsNormal; uniform float4 _CloudsNormal_ST;
            uniform float _CloudsSpeed;
            uniform float4 _CloudsColor;
            uniform float _LightWrapping;
            uniform float _ClampLight;
            uniform float _Visibility;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_38 = _Time + _TimeEditor;
                float2 node_43 = (i.uv0+(node_38.g*(_CloudsSpeed*10.0+0.0))*float2(0.01,0));
                float3 _CloudsNormal_var = UnpackNormal(tex2D(_CloudsNormal,TRANSFORM_TEX(node_43, _CloudsNormal)));
                float3 normalLocal = _CloudsNormal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = float3(_LightWrapping,_LightWrapping,_LightWrapping)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = forwardLight * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * clamp((_CloudsColor.rgb*(dot(lightDirection,normalDirection)+_LightWrapping)),0.0,(_ClampLight*-1.0+1.0));
/// Final Color:
                float3 finalColor = diffuse;
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(node_43, _Clouds));
                return fixed4(finalColor,(_Visibility*_Clouds_var.rgb.r));
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
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
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform sampler2D _Clouds; uniform float4 _Clouds_ST;
            uniform sampler2D _CloudsNormal; uniform float4 _CloudsNormal_ST;
            uniform float _CloudsSpeed;
            uniform float4 _CloudsColor;
            uniform float _LightWrapping;
            uniform float _ClampLight;
            uniform float _Visibility;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_38 = _Time + _TimeEditor;
                float2 node_43 = (i.uv0+(node_38.g*(_CloudsSpeed*10.0+0.0))*float2(0.01,0));
                float3 _CloudsNormal_var = UnpackNormal(tex2D(_CloudsNormal,TRANSFORM_TEX(node_43, _CloudsNormal)));
                float3 normalLocal = _CloudsNormal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = dot( normalDirection, lightDirection );
                float3 w = float3(_LightWrapping,_LightWrapping,_LightWrapping)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 directDiffuse = forwardLight * attenColor;
                float3 diffuse = directDiffuse * clamp((_CloudsColor.rgb*(dot(lightDirection,normalDirection)+_LightWrapping)),0.0,(_ClampLight*-1.0+1.0));
/// Final Color:
                float3 finalColor = diffuse;
                float4 _Clouds_var = tex2D(_Clouds,TRANSFORM_TEX(node_43, _Clouds));
                return fixed4(finalColor * (_Visibility*_Clouds_var.rgb.r),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
