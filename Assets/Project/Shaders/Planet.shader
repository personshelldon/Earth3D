// Shader created with Shader Forge v1.03 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.03;sub:START;pass:START;ps:flbk:Diffuse,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:False,lmpd:True,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1,x:34715,y:32731,varname:node_1,prsc:2|diff-233-OUT,spec-1480-OUT,normal-1466-RGB,emission-2321-OUT,lwrap-3207-OUT,amdfl-8851-OUT,amspl-1480-OUT;n:type:ShaderForge.SFN_Tex2d,id:12,x:33708,y:33707,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_2810,prsc:2,tex:f1abc036fe2daa549bfd5e552f74e527,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:28,x:33947,y:33707,ptovrint:False,ptlb:Lights,ptin:_Lights,varname:node_2655,prsc:2,tex:f1ebfd7cf2034474fabbcf49184959a2,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:207,x:33261,y:32308,varname:node_207,prsc:2;n:type:ShaderForge.SFN_Color,id:208,x:33261,y:32461,ptovrint:False,ptlb:Atmosphere Light Color,ptin:_AtmosphereLightColor,varname:node_4740,prsc:2,glob:False,c1:0.4931034,c2:0.4931034,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:209,x:33434,y:32483,varname:node_209,prsc:2|A-207-OUT,B-208-RGB;n:type:ShaderForge.SFN_Dot,id:211,x:33451,y:32687,varname:node_211,prsc:2,dt:1|A-984-OUT,B-216-OUT;n:type:ShaderForge.SFN_LightVector,id:216,x:33261,y:32768,varname:node_216,prsc:2;n:type:ShaderForge.SFN_Multiply,id:221,x:33723,y:32519,varname:node_221,prsc:2|A-209-OUT,B-304-OUT;n:type:ShaderForge.SFN_Slider,id:232,x:33616,y:32973,ptovrint:False,ptlb:Atmosphere Light Power,ptin:_AtmosphereLightPower,varname:node_4055,prsc:2,min:0,cur:0.75,max:1;n:type:ShaderForge.SFN_Multiply,id:233,x:33923,y:32591,varname:node_233,prsc:2|A-221-OUT,B-604-OUT;n:type:ShaderForge.SFN_Exp,id:289,x:33451,y:32917,varname:node_289,prsc:2,et:1|IN-292-OUT;n:type:ShaderForge.SFN_RemapRange,id:292,x:33246,y:32917,varname:node_292,prsc:2,frmn:0,frmx:1,tomn:5,tomx:0|IN-294-OUT;n:type:ShaderForge.SFN_Slider,id:294,x:32919,y:32946,ptovrint:False,ptlb:Atmosphere Light Size,ptin:_AtmosphereLightSize,varname:node_6385,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Power,id:304,x:33704,y:32746,varname:node_304,prsc:2|VAL-211-OUT,EXP-289-OUT;n:type:ShaderForge.SFN_Multiply,id:495,x:33902,y:33161,varname:node_495,prsc:2|A-12-RGB,B-2127-OUT;n:type:ShaderForge.SFN_Slider,id:516,x:32906,y:33272,ptovrint:False,ptlb:Day Visible Size,ptin:_DayVisibleSize,varname:node_4890,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Dot,id:529,x:33424,y:33083,varname:node_529,prsc:2,dt:1|A-216-OUT,B-530-OUT;n:type:ShaderForge.SFN_NormalVector,id:530,x:33246,y:33099,prsc:2,pt:True;n:type:ShaderForge.SFN_Power,id:584,x:33593,y:33072,varname:node_584,prsc:2|VAL-529-OUT,EXP-586-OUT;n:type:ShaderForge.SFN_Exp,id:586,x:33438,y:33236,varname:node_586,prsc:2,et:1|IN-629-OUT;n:type:ShaderForge.SFN_RemapRange,id:604,x:33895,y:32795,varname:node_604,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5|IN-232-OUT;n:type:ShaderForge.SFN_RemapRange,id:629,x:33246,y:33252,varname:node_629,prsc:2,frmn:0,frmx:1,tomn:3,tomx:0|IN-516-OUT;n:type:ShaderForge.SFN_LightColor,id:776,x:34197,y:32993,varname:node_776,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:853,x:33840,y:33367,varname:node_853,prsc:2|IN-2127-OUT;n:type:ShaderForge.SFN_Power,id:902,x:33929,y:33518,varname:node_902,prsc:2|VAL-853-OUT,EXP-905-OUT;n:type:ShaderForge.SFN_Exp,id:905,x:33442,y:33560,varname:node_905,prsc:2,et:1|IN-909-OUT;n:type:ShaderForge.SFN_RemapRange,id:909,x:33250,y:33577,varname:node_909,prsc:2,frmn:0,frmx:1,tomn:5,tomx:0|IN-912-OUT;n:type:ShaderForge.SFN_Slider,id:912,x:32841,y:33576,ptovrint:False,ptlb:Lights Offset,ptin:_LightsOffset,varname:node_9889,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_ViewReflectionVector,id:984,x:33261,y:32629,varname:node_984,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1096,x:34136,y:32106,varname:node_1096,prsc:2|A-1097-RGB,B-304-OUT;n:type:ShaderForge.SFN_Tex2d,id:1097,x:33704,y:32227,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_4281,prsc:2,tex:a942bccd45cb1be4aa636455ea0c0972,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1466,x:34458,y:32370,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_7612,prsc:2,tex:dba6045c0ac19904288e7ea5b3f87d33,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Power,id:1480,x:34312,y:32539,varname:node_1480,prsc:2|VAL-1096-OUT,EXP-1481-OUT;n:type:ShaderForge.SFN_Exp,id:1481,x:34102,y:32430,varname:node_1481,prsc:2,et:0|IN-1485-OUT;n:type:ShaderForge.SFN_RemapRange,id:1485,x:33923,y:32423,varname:node_1485,prsc:2,frmn:0,frmx:1,tomn:2,tomx:-2|IN-1487-OUT;n:type:ShaderForge.SFN_Slider,id:1487,x:33566,y:32438,ptovrint:False,ptlb:Specular Intensity,ptin:_SpecularIntensity,varname:node_193,prsc:2,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Multiply,id:1884,x:34152,y:33577,varname:node_1884,prsc:2|A-902-OUT,B-28-RGB;n:type:ShaderForge.SFN_Sqrt,id:2097,x:33632,y:33267,varname:node_2097,prsc:2|IN-584-OUT;n:type:ShaderForge.SFN_Exp,id:2121,x:33442,y:33398,varname:node_2121,prsc:2,et:1|IN-2123-OUT;n:type:ShaderForge.SFN_RemapRange,id:2123,x:33250,y:33414,varname:node_2123,prsc:2,frmn:0,frmx:1,tomn:2,tomx:0|IN-2125-OUT;n:type:ShaderForge.SFN_Slider,id:2125,x:32910,y:33434,ptovrint:False,ptlb:Day To Night Strength,ptin:_DayToNightStrength,varname:node_7123,prsc:2,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Power,id:2127,x:33632,y:33436,varname:node_2127,prsc:2|VAL-2097-OUT,EXP-2121-OUT;n:type:ShaderForge.SFN_Add,id:2217,x:34242,y:32700,varname:node_2217,prsc:2|A-1884-OUT,B-495-OUT;n:type:ShaderForge.SFN_Slider,id:2320,x:34129,y:32896,ptovrint:False,ptlb:Main Light,ptin:_MainLight,varname:node_3743,prsc:2,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Multiply,id:2321,x:34442,y:32869,varname:node_2321,prsc:2|A-2217-OUT,B-2320-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8800,x:34197,y:33153,varname:node_8800,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8851,x:34392,y:33050,varname:node_8851,prsc:2|A-776-RGB,B-8800-OUT;n:type:ShaderForge.SFN_Slider,id:3207,x:34392,y:33207,ptovrint:False,ptlb:Light Wrapping,ptin:_LightWrapping,varname:node_3207,prsc:2,min:0,cur:0,max:5;proporder:12-1466-28-1097-208-232-294-516-912-1487-2125-2320-3207;pass:END;sub:END;*/

Shader "Shader Forge/Planet" {
    Properties {
        _Texture ("Texture", 2D) = "black" {}
        _Normal ("Normal", 2D) = "bump" {}
        _Lights ("Lights", 2D) = "black" {}
        _Reflection ("Reflection", 2D) = "white" {}
        _AtmosphereLightColor ("Atmosphere Light Color", Color) = (0.4931034,0.4931034,1,1)
        _AtmosphereLightPower ("Atmosphere Light Power", Range(0, 1)) = 0.75
        _AtmosphereLightSize ("Atmosphere Light Size", Range(0, 1)) = 0.5
        _DayVisibleSize ("Day Visible Size", Range(0, 1)) = 1
        _LightsOffset ("Lights Offset", Range(0, 1)) = 0.5
        _SpecularIntensity ("Specular Intensity", Range(0, 1)) = 0.5
        _DayToNightStrength ("Day To Night Strength", Range(0, 1)) = 1
        _MainLight ("Main Light", Range(0, 2)) = 1
        _LightWrapping ("Light Wrapping", Range(0, 5)) = 0
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
            #include "Lighting.cginc"
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
            #ifndef LIGHTMAP_OFF
                float4 unity_LightmapST;
                sampler2D unity_Lightmap;
                #ifndef DIRLIGHTMAP_OFF
                    sampler2D unity_LightmapInd;
                #endif
            #endif
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Lights; uniform float4 _Lights_ST;
            uniform float4 _AtmosphereLightColor;
            uniform float _AtmosphereLightPower;
            uniform float _AtmosphereLightSize;
            uniform float _DayVisibleSize;
            uniform float _LightsOffset;
            uniform sampler2D _Reflection; uniform float4 _Reflection_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularIntensity;
            uniform float _DayToNightStrength;
            uniform float _MainLight;
            uniform float _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
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
                #ifndef LIGHTMAP_OFF
                    float2 uvLM : TEXCOORD8;
                #endif
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
                #ifndef LIGHTMAP_OFF
                    o.uvLM = v.texcoord1 * unity_LightmapST.xy + unity_LightmapST.zw;
                #endif
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                #ifndef LIGHTMAP_OFF
                    float4 lmtex = tex2D(unity_Lightmap,i.uvLM);
                    #ifndef DIRLIGHTMAP_OFF
                        float3 lightmap = DecodeLightmap(lmtex);
                        float3 scalePerBasisVector = DecodeLightmap(tex2D(unity_LightmapInd,i.uvLM));
                        UNITY_DIRBASIS
                        half3 normalInRnmBasis = saturate (mul (unity_DirBasis, normalLocal));
                        lightmap *= dot (normalInRnmBasis, scalePerBasisVector);
                    #else
                        float3 lightmap = DecodeLightmap(lmtex);
                    #endif
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef DIRLIGHTMAP_OFF
                        float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                    #else
                        float3 lightDirection = normalize (scalePerBasisVector.x * unity_DirBasis[0] + scalePerBasisVector.y * unity_DirBasis[1] + scalePerBasisVector.z * unity_DirBasis[2]);
                        lightDirection = mul(lightDirection,tangentTransform); // Tangent to world
                    #endif
                #else
                    float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                #endif
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Reflection_var = tex2D(_Reflection,TRANSFORM_TEX(i.uv0, _Reflection));
                float node_304 = pow(max(0,dot(viewReflectDirection,lightDirection)),exp2((_AtmosphereLightSize*-5.0+5.0)));
                float3 node_1480 = pow((_Reflection_var.rgb*node_304),exp((_SpecularIntensity*-4.0+2.0)));
                float3 specularColor = node_1480;
                #if !defined(LIGHTMAP_OFF) && defined(DIRLIGHTMAP_OFF)
                    float3 directSpecular = float3(0,0,0);
                #else
                    float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                #endif
                float3 indirectSpecular = (0 + node_1480);
                float3 specular = (directSpecular + indirectSpecular) * specularColor;
                #ifndef LIGHTMAP_OFF
                    #ifndef DIRLIGHTMAP_OFF
                        specular *= lightmap;
                    #else
                        specular *= attenColor;
                    #endif
                #else
                    specular *= attenColor;
                #endif
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 w = float3(_LightWrapping,_LightWrapping,_LightWrapping)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 indirectDiffuse = float3(0,0,0);
                #ifndef LIGHTMAP_OFF
                    float3 directDiffuse = float3(0,0,0);
                #else
                    float3 directDiffuse = forwardLight * attenColor;
                #endif
                #ifndef LIGHTMAP_OFF
                    #ifdef SHADOWS_SCREEN
                        #if (defined(SHADER_API_GLES) || defined(SHADER_API_GLES3)) && defined(SHADER_API_MOBILE)
                            directDiffuse += min(lightmap.rgb, attenuation);
                        #else
                            directDiffuse += max(min(lightmap.rgb,attenuation*lmtex.rgb), lightmap.rgb*attenuation*0.5);
                        #endif
                    #else
                        directDiffuse += lightmap.rgb;
                    #endif
                #endif
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                indirectDiffuse += (_LightColor0.rgb*attenuation); // Diffuse Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * ((((1.0-max(0,dot(normalDirection, viewDirection)))*_AtmosphereLightColor.rgb)*node_304)*(_AtmosphereLightPower*5.0+0.0));
////// Emissive:
                float node_2127 = pow(sqrt(pow(max(0,dot(lightDirection,normalDirection)),exp2((_DayVisibleSize*-3.0+3.0)))),exp2((_DayToNightStrength*-2.0+2.0)));
                float4 _Lights_var = tex2D(_Lights,TRANSFORM_TEX(i.uv0, _Lights));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float3 emissive = (((pow((1.0 - node_2127),exp2((_LightsOffset*-5.0+5.0)))*_Lights_var.rgb)+(_Texture_var.rgb*node_2127))*_MainLight);
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
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
            #include "Lighting.cginc"
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
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Lights; uniform float4 _Lights_ST;
            uniform float4 _AtmosphereLightColor;
            uniform float _AtmosphereLightPower;
            uniform float _AtmosphereLightSize;
            uniform float _DayVisibleSize;
            uniform float _LightsOffset;
            uniform sampler2D _Reflection; uniform float4 _Reflection_ST;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _SpecularIntensity;
            uniform float _DayToNightStrength;
            uniform float _MainLight;
            uniform float _LightWrapping;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
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
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = 0.5;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 _Reflection_var = tex2D(_Reflection,TRANSFORM_TEX(i.uv0, _Reflection));
                float node_304 = pow(max(0,dot(viewReflectDirection,lightDirection)),exp2((_AtmosphereLightSize*-5.0+5.0)));
                float3 node_1480 = pow((_Reflection_var.rgb*node_304),exp((_SpecularIntensity*-4.0+2.0)));
                float3 specularColor = node_1480;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float3 w = float3(_LightWrapping,_LightWrapping,_LightWrapping)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 directDiffuse = forwardLight * attenColor;
                float3 diffuse = directDiffuse * ((((1.0-max(0,dot(normalDirection, viewDirection)))*_AtmosphereLightColor.rgb)*node_304)*(_AtmosphereLightPower*5.0+0.0));
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
