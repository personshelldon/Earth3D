// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:769,x:33123,y:32892,varname:node_769,prsc:2|diff-3599-OUT,spec-2272-OUT,gloss-4679-OUT,amdfl-7700-OUT,amspl-5271-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:2662,x:32124,y:33432,varname:node_2662,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:880,x:32124,y:33216,prsc:2,pt:True;n:type:ShaderForge.SFN_Cubemap,id:3837,x:32322,y:33216,ptovrint:False,ptlb:Cubemap,ptin:_Cubemap,varname:node_3837,prsc:2,cube:a596436b21c6d484bb9b3b6385e3e666,pvfc:1|DIR-880-OUT;n:type:ShaderForge.SFN_Cubemap,id:5075,x:32322,y:33432,ptovrint:False,ptlb:Cubemap_1,ptin:_Cubemap_1,varname:node_5075,prsc:2,cube:a596436b21c6d484bb9b3b6385e3e666,pvfc:1|DIR-2662-OUT;n:type:ShaderForge.SFN_Vector1,id:4909,x:32322,y:33600,varname:node_4909,prsc:2,v1:7;n:type:ShaderForge.SFN_Multiply,id:2404,x:32505,y:33511,varname:node_2404,prsc:2|A-5075-A,B-4909-OUT;n:type:ShaderForge.SFN_Multiply,id:5271,x:32671,y:33415,varname:node_5271,prsc:2|A-5075-RGB,B-2404-OUT,C-295-OUT;n:type:ShaderForge.SFN_Vector1,id:6105,x:32322,y:33103,varname:node_6105,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:7700,x:32560,y:33216,varname:node_7700,prsc:2|A-6105-OUT,B-3837-RGB,C-3837-A;n:type:ShaderForge.SFN_Fresnel,id:2412,x:32383,y:32609,varname:node_2412,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4324,x:32630,y:32628,varname:node_4324,prsc:2|A-2412-OUT,B-2412-OUT,C-2412-OUT,D-3464-RGB;n:type:ShaderForge.SFN_LightColor,id:3464,x:32383,y:32862,varname:node_3464,prsc:2;n:type:ShaderForge.SFN_Slider,id:4679,x:32757,y:33036,ptovrint:False,ptlb:.0,ptin:_0,varname:node_4679,prsc:2,min:0,cur:0.912462,max:1;n:type:ShaderForge.SFN_Multiply,id:3599,x:32904,y:32680,varname:node_3599,prsc:2|A-4324-OUT,B-8753-RGB;n:type:ShaderForge.SFN_Color,id:8753,x:32476,y:33019,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8753,prsc:2,glob:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:2272,x:32836,y:32873,varname:node_2272,prsc:2|A-3464-RGB,B-8753-RGB;n:type:ShaderForge.SFN_LightVector,id:2629,x:32083,y:32937,varname:node_2629,prsc:2;n:type:ShaderForge.SFN_Dot,id:295,x:32255,y:32967,varname:node_295,prsc:2,dt:0|A-2629-OUT,B-880-OUT;proporder:3837-5075-4679-8753;pass:END;sub:END;*/

Shader "Shader Forge/NewShader" {
    Properties {
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
        _Cubemap_1 ("Cubemap_1", Cube) = "_Skybox" {}
        _0 (".0", Range(0, 1)) = 0.912462
        _Color ("Color", Color) = (1,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
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
            uniform samplerCUBE _Cubemap;
            uniform samplerCUBE _Cubemap_1;
            uniform float _0;
            uniform float4 _Color;
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
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _0;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Cubemap_1_var = texCUBE(_Cubemap_1,viewReflectDirection);
                float3 specularColor = (_LightColor0.rgb*_Color.rgb);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 indirectSpecular = (0 + (_Cubemap_1_var.rgb*(_Cubemap_1_var.a*7.0)*dot(lightDirection,normalDirection)));
                float3 specular = (directSpecular + indirectSpecular) * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _Cubemap_var = texCUBE(_Cubemap,normalDirection);
                indirectDiffuse += (2.0*_Cubemap_var.rgb*_Cubemap_var.a); // Diffuse Ambient Light
                float node_2412 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float3 diffuse = (directDiffuse + indirectDiffuse) * ((node_2412*node_2412*node_2412*_LightColor0.rgb)*_Color.rgb);
/// Final Color:
                float3 finalColor = diffuse + specular;
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
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
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
            uniform float _0;
            uniform float4 _Color;
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
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
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
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _0;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (_LightColor0.rgb*_Color.rgb);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_2412 = (1.0-max(0,dot(normalDirection, viewDirection)));
                float3 diffuse = directDiffuse * ((node_2412*node_2412*node_2412*_LightColor0.rgb)*_Color.rgb);
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
