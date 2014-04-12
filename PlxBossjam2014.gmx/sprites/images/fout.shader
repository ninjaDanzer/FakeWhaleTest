float3 vec3(float x0, float x1, float x2)
{
    return float3(x0, x1, x2);
}
float4 vec4(float x0, float3 x1)
{
    return float4(x0, x1);
}
float4 vec4(float2 x0, float2 x1)
{
    return float4(x0, x1);
}
float4 vec4(float3 x0, float x1)
{
    return float4(x0, x1);
}
// Varyings
static float4 _v_vColour = {0, 0, 0, 0};
static float2 _v_vTexcoord = {0, 0};

static float4 gl_Color[1] =
{
    float4(0, 0, 0, 0)
};


uniform float _gm_AlphaRefValue : register(c3);
uniform bool _gm_AlphaTestEnabled : register(c4);
uniform sampler2D _gm_BaseTexture : register(s0);
uniform float4 _gm_FogColour : register(c5);
uniform bool _gm_PS_FogEnabled : register(c6);

float4 gl_texture2D(sampler2D s, float2 t)
{
    return tex2D(s, t);
}

#define GL_USES_FRAG_COLOR
;
;
;
;
;
void _DoAlphaTest(in float4 _SrcColour)
{
{
if(_gm_AlphaTestEnabled)
{
{
if((_SrcColour.w <= _gm_AlphaRefValue))
{
{
discard;
;
}
;
}
;
}
;
}
;
}
}
;
void _DoFog(inout float4 _SrcColour, in float _fogval)
{
{
if(_gm_PS_FogEnabled)
{
{
(_SrcColour = lerp(_SrcColour, _gm_FogColour, clamp(_fogval, 0.0, 1.0)));
}
;
}
;
}
}
;
;
;
float3 _rgb2hsv(in float3 _c)
{
{
float4 _K = float4(0.0, -0.33333334, 0.66666669, -1.0);
float4 _p = lerp(vec4(_c.zy, _K.wz), vec4(_c.yz, _K.xy), step(_c.z, _c.y));
float4 _q = lerp(vec4(_p.xyw, _c.x), vec4(_c.x, _p.yzx), step(_p.x, _c.x));
float _d = (_q.x - min(_q.w, _q.y));
float _e = 1e-010;
return vec3(abs((_q.z + ((_q.w - _q.y) / ((6.0 * _d) + _e)))), (_d / (_q.x + _e)), _q.x);
;
}
}
;
float3 _hsv2rgb(in float3 _c)
{
{
float4 _K = float4(1.0, 0.66666669, 0.33333334, 3.0);
float3 _p = abs(((frac((_c.xxx + _K.xyz)) * 6.0) - _K.www));
return (_c.z * lerp(_K.xxx, clamp((_p - _K.xxx), 0.0, 1.0), _c.y));
;
}
}
;
void gl_main()
{
{
float4 _InColor = (_v_vColour * gl_texture2D(_gm_BaseTexture, _v_vTexcoord));
float3 _InHSV = _rgb2hsv(_InColor.xyz);
(gl_Color[0] = vec4(_hsv2rgb(vec3(_InHSV.x, 0.0, _InHSV.z)), _InColor.w));
}
}
;
struct PS_INPUT
{
    float4 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
};

struct PS_OUTPUT
{
    float4 gl_Color0 : COLOR0;
};

PS_OUTPUT main(PS_INPUT input)
{
    _v_vColour = input.v0;
    _v_vTexcoord = input.v1.xy;

    gl_main();

    PS_OUTPUT output;
    output.gl_Color0 = gl_Color[0];

    return output;
}
