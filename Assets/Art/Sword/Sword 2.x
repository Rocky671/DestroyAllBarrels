xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3cf169ce-ff7c-44ab-93c0-f78f62d172e2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template SkinWeights {
 <6f0d123b-bad2-4167-a0d0-80224f25fabb>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}
Frame Editable_Mesh {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.282675,-9.673425,0.000000,1.000000;;
 }
Mesh Editable_Mesh1 {
 139;
-0.562972;-2.921380;0.000001;,
-0.562976;5.400480;0.000002;,
-0.255683;5.400480;0.545604;,
-0.255678;-2.921380;0.545600;,
0.496935;5.400480;0.545607;,
0.358911;-2.921380;0.545600;,
0.666206;-2.921380;0.000001;,
0.666201;5.400480;0.000002;,
-1.033740;-3.457380;0.000001;,
-0.255678;-2.921380;0.545600;,
-0.788841;-3.457380;0.661347;,
-0.562972;-2.921380;0.000001;,
0.358911;-2.921380;0.545600;,
0.051321;-3.457380;1.072720;,
0.666206;-2.921380;0.000001;,
0.891333;-3.457380;0.661350;,
-0.843831;-4.024250;0.661347;,
-1.033740;-4.024250;0.000001;,
1.136080;-3.457380;0.000001;,
0.946323;-4.024250;0.661350;,
0.051321;-4.024250;1.144730;,
-0.680190;-4.515560;0.471959;,
0.034051;-4.858850;0.000001;,
-0.848827;-4.515080;0.000001;,
1.136080;-4.024250;0.000001;,
0.767701;-4.515650;0.470259;,
0.045638;-4.514440;0.899377;,
0.034051;-4.858850;0.000001;,
0.034051;-4.858850;0.000001;,
0.949850;-4.514750;0.000001;,
0.034051;-4.858850;0.000001;,
1.013200;14.294900;0.000002;,
-0.281029;11.802700;0.773554;,
1.929220;19.444700;0.000003;,
0.496935;5.400480;0.545607;,
1.450930;6.198100;0.000002;,
-0.760993;3.607470;0.987903;,
-0.562976;5.400480;0.000002;,
-1.098020;3.607470;0.000001;,
-1.452010;3.637660;0.987903;,
-1.070380;4.842670;0.642225;,
-1.789030;3.637660;-0.000002;,
-1.407410;4.842670;0.000002;,
-0.952151;6.190220;0.480702;,
-1.289170;6.190220;0.000002;,
-1.184930;10.299800;0.836697;,
-1.521960;10.299800;0.000002;,
-1.144050;13.462900;0.573714;,
-0.786446;10.577800;0.000002;,
-1.481070;13.465200;0.000002;,
-0.449422;10.577800;0.573714;,
-1.832040;23.421200;0.582653;,
-1.309060;21.813601;0.000003;,
-2.000400;23.666401;0.000000;,
-1.416000;23.587000;0.736071;,
-2.000400;23.666401;0.000000;,
-1.440670;23.832199;0.000003;,
-0.321587;22.047199;0.666619;,
-1.440670;23.832199;0.000003;,
-0.321586;22.047199;0.000003;,
1.673780;22.056700;0.000003;,
1.340870;21.283701;0.000003;,
0.634936;21.200701;0.594541;,
-0.321587;22.047199;0.666619;,
0.674083;23.410400;0.000003;,
-0.457165;24.205700;0.000003;,
-0.255683;5.400480;0.545604;,
-0.760993;3.607470;0.987903;,
-0.255683;5.400480;0.545604;,
-0.449422;10.577800;0.573714;,
-0.826468;21.215500;0.573715;,
-0.164543;7.365370;0.890478;,
-1.921730;14.267400;1.011590;,
-1.481070;13.465200;0.000002;,
-2.258760;14.269600;-0.000001;,
-1.144050;13.462900;0.573714;,
-1.567880;19.887899;-0.000000;,
-1.230860;19.885599;0.412899;,
-1.553000;21.263500;0.460634;,
-1.890020;21.265699;-0.000000;,
-1.862850;21.451099;0.427845;,
-2.199880;21.612801;0.000000;,
-1.887990;22.075800;0.435111;,
-1.892180;22.223000;0.000000;,
-1.309060;21.813601;0.000003;,
-0.449422;10.577800;0.573714;,
-0.786446;10.577800;0.000002;,
-0.321586;22.047199;0.000003;,
1.303700;20.670500;0.000003;,
1.807110;4.855910;0.000001;,
1.389630;4.286790;0.545607;,
2.824110;3.724190;0.000001;,
1.389630;3.825210;0.000001;,
0.666201;5.400480;0.000002;,
0.148280;7.365370;0.977350;,
-0.255682;5.400480;-0.545600;,
-0.255677;-2.921380;-0.545601;,
0.496936;5.400480;-0.545600;,
0.358912;-2.921380;-0.545601;,
-0.788840;-3.457380;-0.661349;,
-0.255677;-2.921380;-0.545601;,
0.358912;-2.921380;-0.545601;,
0.051323;-3.457380;-1.072720;,
0.891334;-3.457380;-0.661346;,
-0.843829;-4.024250;-0.661349;,
0.946324;-4.024250;-0.661346;,
0.051324;-4.024250;-1.144730;,
-0.680189;-4.515560;-0.471957;,
0.767702;-4.515650;-0.470255;,
0.045639;-4.514440;-0.899373;,
-0.281028;11.802700;-0.773547;,
0.496936;5.400480;-0.545600;,
-0.760992;3.607470;-0.987900;,
-1.452000;3.637660;-0.987900;,
-1.070380;4.842670;-0.642225;,
-0.952150;6.190220;-0.480702;,
-1.184930;10.299800;-0.836693;,
-1.144050;13.462900;-0.573713;,
-0.449421;10.577800;-0.573713;,
-1.832040;23.421200;-0.582650;,
-1.416000;23.587000;-0.736067;,
-0.321585;22.047199;-0.666612;,
0.634937;21.200701;-0.594535;,
-0.321585;22.047199;-0.666612;,
-0.255682;5.400480;-0.545600;,
-0.760992;3.607470;-0.987900;,
-0.255682;5.400480;-0.545600;,
-0.449421;10.577800;-0.573713;,
-0.826467;21.215500;-0.573712;,
-0.164541;7.365370;-0.890471;,
-1.921730;14.267400;-1.011590;,
-1.144050;13.462900;-0.573713;,
-1.230860;19.885599;-0.412893;,
-1.553000;21.263500;-0.460630;,
-1.862850;21.451099;-0.427845;,
-1.887990;22.075800;-0.435108;,
-0.449421;10.577800;-0.573713;,
1.389630;4.286790;-0.545601;,
0.148282;7.365370;-0.977343;;

 208;
3;2,1,0;,
3;3,2,0;,
3;4,2,3;,
3;5,4,3;,
3;6,4,5;,
3;6,7,4;,
3;10,9,8;,
3;11,8,9;,
3;9,13,12;,
3;15,14,12;,
3;12,13,15;,
3;16,13,10;,
3;8,17,10;,
3;19,18,15;,
3;13,20,15;,
3;23,22,21;,
3;15,20,19;,
3;18,14,15;,
3;25,24,19;,
3;24,18,19;,
3;21,27,26;,
3;20,13,16;,
3;10,17,16;,
3;13,9,10;,
3;26,25,19;,
3;20,26,19;,
3;16,26,20;,
3;26,28,25;,
3;29,24,25;,
3;30,29,25;,
3;16,21,26;,
3;17,21,16;,
3;17,23,21;,
3;33,32,31;,
3;35,31,34;,
3;38,37,36;,
3;36,39,38;,
3;42,41,40;,
3;39,40,41;,
3;44,42,43;,
3;40,43,42;,
3;46,44,45;,
3;43,45,44;,
3;49,48,47;,
3;50,47,48;,
3;53,52,51;,
3;56,55,54;,
3;51,54,55;,
3;59,58,57;,
3;54,57,58;,
3;62,61,60;,
3;62,60,63;,
3;65,63,64;,
3;60,64,63;,
3;66,36,37;,
3;41,38,39;,
3;39,67,40;,
3;68,40,67;,
3;43,40,68;,
3;45,43,68;,
3;68,69,45;,
3;51,70,54;,
3;70,51,52;,
3;57,54,70;,
3;69,68,71;,
3;70,50,57;,
3;70,47,50;,
3;74,73,72;,
3;75,72,73;,
3;76,74,72;,
3;72,77,76;,
3;79,76,78;,
3;77,78,76;,
3;81,79,80;,
3;78,80,79;,
3;83,81,82;,
3;80,82,81;,
3;84,83,82;,
3;82,70,52;,
3;72,47,77;,
3;70,77,47;,
3;78,77,70;,
3;70,82,78;,
3;80,78,82;,
3;45,85,46;,
3;86,46,85;,
3;87,63,65;,
3;33,62,32;,
3;88,62,33;,
3;62,88,61;,
3;89,35,34;,
3;91,89,90;,
3;34,90,89;,
3;90,92,91;,
3;92,90,34;,
3;34,93,92;,
3;71,68,94;,
3;34,94,68;,
3;63,32,62;,
3;94,32,71;,
3;94,34,32;,
3;69,71,32;,
3;32,34,31;,
3;69,32,63;,
3;1,95,0;,
3;95,96,0;,
3;95,97,96;,
3;97,98,96;,
3;97,7,6;,
3;97,6,98;,
3;100,99,8;,
3;8,11,100;,
3;102,100,101;,
3;14,103,101;,
3;102,101,103;,
3;102,104,99;,
3;17,8,99;,
3;18,105,103;,
3;106,102,103;,
3;22,23,107;,
3;106,103,105;,
3;14,18,103;,
3;24,108,105;,
3;18,24,105;,
3;27,107,109;,
3;102,106,104;,
3;17,99,104;,
3;100,102,99;,
3;108,109,105;,
3;109,106,105;,
3;109,104,106;,
3;28,109,108;,
3;24,29,108;,
3;29,30,108;,
3;107,104,109;,
3;107,17,104;,
3;23,17,107;,
3;110,33,31;,
3;31,35,111;,
3;37,38,112;,
3;113,112,38;,
3;41,42,114;,
3;114,113,41;,
3;42,44,115;,
3;115,114,42;,
3;44,46,116;,
3;116,115,44;,
3;48,49,117;,
3;117,118,48;,
3;52,53,119;,
3;55,56,120;,
3;120,119,55;,
3;58,59,121;,
3;121,120,58;,
3;61,122,60;,
3;60,122,123;,
3;123,65,64;,
3;64,60,123;,
3;112,124,37;,
3;38,41,113;,
3;125,113,114;,
3;114,126,125;,
3;114,115,126;,
3;115,116,126;,
3;127,126,116;,
3;128,119,120;,
3;119,128,52;,
3;120,121,128;,
3;126,127,129;,
3;118,128,121;,
3;117,128,118;,
3;73,74,130;,
3;130,131,73;,
3;74,76,130;,
3;132,130,76;,
3;76,79,133;,
3;133,132,76;,
3;79,81,134;,
3;134,133,79;,
3;81,83,135;,
3;135,134,81;,
3;83,84,135;,
3;128,135,52;,
3;117,130,132;,
3;132,128,117;,
3;132,133,128;,
3;135,128,133;,
3;133,134,135;,
3;136,116,46;,
3;46,86,136;,
3;123,87,65;,
3;122,33,110;,
3;122,88,33;,
3;88,122,61;,
3;35,89,111;,
3;89,91,137;,
3;137,111,89;,
3;92,137,91;,
3;137,92,111;,
3;93,111,92;,
3;126,129,138;,
3;138,111,126;,
3;110,123,122;,
3;110,138,129;,
3;111,138,110;,
3;129,127,110;,
3;111,110,31;,
3;110,127,123;;
MeshMaterialList {
 1;
 208;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
Material {
 1.000000;1.000000;1.000000;1.000000;;
10.000000;
 0.900000;0.900000;0.900000;;
 0.200000;0.200000;0.200000;;
TextureFilename {
"Sword 2.bmp";
}
 }
}

 MeshNormals {
 139;
-0.918542;0.395323;0.000001;,
0.156478;-0.987682;0.000001;,
-0.046187;-0.099398;0.993975;,
-0.471099;0.410542;0.780718;,
0.285214;-0.092695;0.953971;,
0.455905;0.413039;0.788384;,
0.904554;0.426359;0.000001;,
0.026309;-0.999654;0.000000;,
-0.935782;0.352580;0.000000;,
-0.471099;0.410542;0.780718;,
-0.710330;0.361039;0.604220;,
-0.918542;0.395323;0.000001;,
0.455905;0.413039;0.788384;,
-0.007962;0.356112;0.934409;,
0.904554;0.426359;0.000001;,
0.701870;0.357148;0.616298;,
-0.766261;-0.172087;0.619056;,
-0.985895;-0.167365;-0.000000;,
0.937657;0.347561;0.000000;,
0.760772;-0.196699;0.618495;,
-0.005475;-0.160811;0.986970;,
-0.572651;-0.691661;0.440086;,
-0.004754;-0.999989;-0.000000;,
-0.749731;-0.661743;-0.000001;,
0.980915;-0.194438;0.000000;,
0.562312;-0.700706;0.439109;,
-0.001285;-0.693152;0.720791;,
-0.004754;-0.999989;-0.000000;,
-0.004754;-0.999989;-0.000000;,
0.748283;-0.663380;-0.000000;,
-0.004754;-0.999989;-0.000000;,
0.989395;-0.145252;-0.000001;,
-0.196902;0.010590;0.980366;,
0.998752;0.049940;-0.000000;,
0.285214;-0.092695;0.953971;,
0.992586;0.121548;-0.000001;,
0.577452;-0.558093;0.595887;,
0.156478;-0.987682;0.000001;,
0.481669;-0.876353;0.000000;,
-0.548669;-0.426887;0.718840;,
-0.509070;0.261268;0.820114;,
-0.874087;-0.485770;-0.000002;,
-0.974478;0.224485;0.000001;,
-0.530511;-0.025339;0.847299;,
-0.999943;-0.010681;0.000001;,
-0.417858;0.445108;0.792006;,
-0.867334;0.497726;-0.000001;,
-0.346341;-0.265246;0.899829;,
-0.810498;0.585742;0.000001;,
-0.824972;-0.565173;0.000000;,
-0.628896;0.173201;0.757952;,
-0.767470;0.130865;0.627586;,
-0.620338;0.784334;0.000002;,
-0.871465;0.490458;-0.000002;,
0.161825;0.598841;0.784348;,
-0.871465;0.490458;-0.000002;,
0.293523;0.955952;0.000002;,
0.102418;0.216569;0.970880;,
0.293523;0.955952;0.000002;,
-0.306357;0.951917;-0.000000;,
0.970318;0.241832;0.000000;,
0.964619;-0.263650;0.000001;,
0.350954;0.076045;0.933300;,
0.102418;0.216569;0.970880;,
0.690253;0.723568;0.000000;,
-0.363679;0.931524;0.000000;,
-0.046187;-0.099398;0.993975;,
0.577452;-0.558093;0.595887;,
-0.046187;-0.099398;0.993975;,
-0.628896;0.173201;0.757952;,
-0.195282;-0.008235;0.980713;,
-0.616197;-0.058360;0.785427;,
-0.403842;-0.246582;0.880971;,
-0.824972;-0.565173;0.000000;,
-0.955931;-0.293593;-0.000001;,
-0.346341;-0.265246;0.899829;,
-0.999540;-0.030332;-0.000004;,
-0.564747;-0.003243;0.825258;,
-0.407355;-0.208376;0.889180;,
-0.829035;-0.559197;-0.000002;,
-0.537499;-0.368794;0.758344;,
-0.987878;-0.155235;-0.000001;,
-0.269349;0.653304;0.707563;,
-0.216783;0.976220;-0.000003;,
-0.620338;0.784334;0.000002;,
-0.628896;0.173201;0.757952;,
-0.810498;0.585742;0.000001;,
-0.306357;0.951917;-0.000000;,
0.942831;0.333270;0.000000;,
0.816978;0.576669;-0.000001;,
-0.080029;-0.254132;0.963853;,
0.909166;-0.416434;-0.000001;,
-0.434520;-0.900662;-0.000001;,
0.026309;-0.999654;0.000000;,
0.458101;0.010421;0.888839;,
-0.046183;-0.099398;-0.993976;,
-0.471098;0.410542;-0.780719;,
0.285216;-0.092694;-0.953970;,
0.455907;0.413038;-0.788383;,
-0.710329;0.361038;-0.604222;,
-0.471098;0.410542;-0.780719;,
0.455907;0.413038;-0.788383;,
-0.007960;0.356111;-0.934410;,
0.701872;0.357147;-0.616297;,
-0.766259;-0.172088;-0.619058;,
0.760773;-0.196699;-0.618493;,
-0.005472;-0.160813;-0.986970;,
-0.572650;-0.691661;-0.440086;,
0.562312;-0.700706;-0.439108;,
-0.001284;-0.693153;-0.720789;,
-0.196895;0.010590;-0.980367;,
0.285216;-0.092694;-0.953970;,
0.577453;-0.558093;-0.595886;,
-0.548667;-0.426888;-0.718840;,
-0.509068;0.261268;-0.820115;,
-0.530510;-0.025338;-0.847300;,
-0.417858;0.445107;-0.792006;,
-0.346342;-0.265246;-0.899829;,
-0.628891;0.173200;-0.757956;,
-0.767469;0.130864;-0.627587;,
0.161826;0.598842;-0.784348;,
0.102421;0.216570;-0.970880;,
0.350954;0.076045;-0.933300;,
0.102421;0.216570;-0.970880;,
-0.046183;-0.099398;-0.993976;,
0.577453;-0.558093;-0.595886;,
-0.046183;-0.099398;-0.993976;,
-0.628891;0.173200;-0.757956;,
-0.195280;-0.008235;-0.980713;,
-0.616194;-0.058360;-0.785429;,
-0.403841;-0.246582;-0.880971;,
-0.346342;-0.265246;-0.899829;,
-0.564746;-0.003242;-0.825258;,
-0.407353;-0.208376;-0.889181;,
-0.537493;-0.368792;-0.758349;,
-0.269348;0.653303;-0.707564;,
-0.628891;0.173200;-0.757956;,
-0.080029;-0.254131;-0.963853;,
0.458103;0.010422;-0.888838;;

 208;
3;2,1,0;,
3;3,2,0;,
3;4,2,3;,
3;5,4,3;,
3;6,4,5;,
3;6,7,4;,
3;10,9,8;,
3;11,8,9;,
3;9,13,12;,
3;15,14,12;,
3;12,13,15;,
3;16,13,10;,
3;8,17,10;,
3;19,18,15;,
3;13,20,15;,
3;23,22,21;,
3;15,20,19;,
3;18,14,15;,
3;25,24,19;,
3;24,18,19;,
3;21,27,26;,
3;20,13,16;,
3;10,17,16;,
3;13,9,10;,
3;26,25,19;,
3;20,26,19;,
3;16,26,20;,
3;26,28,25;,
3;29,24,25;,
3;30,29,25;,
3;16,21,26;,
3;17,21,16;,
3;17,23,21;,
3;33,32,31;,
3;35,31,34;,
3;38,37,36;,
3;36,39,38;,
3;42,41,40;,
3;39,40,41;,
3;44,42,43;,
3;40,43,42;,
3;46,44,45;,
3;43,45,44;,
3;49,48,47;,
3;50,47,48;,
3;53,52,51;,
3;56,55,54;,
3;51,54,55;,
3;59,58,57;,
3;54,57,58;,
3;62,61,60;,
3;62,60,63;,
3;65,63,64;,
3;60,64,63;,
3;66,36,37;,
3;41,38,39;,
3;39,67,40;,
3;68,40,67;,
3;43,40,68;,
3;45,43,68;,
3;68,69,45;,
3;51,70,54;,
3;70,51,52;,
3;57,54,70;,
3;69,68,71;,
3;70,50,57;,
3;70,47,50;,
3;74,73,72;,
3;75,72,73;,
3;76,74,72;,
3;72,77,76;,
3;79,76,78;,
3;77,78,76;,
3;81,79,80;,
3;78,80,79;,
3;83,81,82;,
3;80,82,81;,
3;84,83,82;,
3;82,70,52;,
3;72,47,77;,
3;70,77,47;,
3;78,77,70;,
3;70,82,78;,
3;80,78,82;,
3;45,85,46;,
3;86,46,85;,
3;87,63,65;,
3;33,62,32;,
3;88,62,33;,
3;62,88,61;,
3;89,35,34;,
3;91,89,90;,
3;34,90,89;,
3;90,92,91;,
3;92,90,34;,
3;34,93,92;,
3;71,68,94;,
3;34,94,68;,
3;63,32,62;,
3;94,32,71;,
3;94,34,32;,
3;69,71,32;,
3;32,34,31;,
3;69,32,63;,
3;1,95,0;,
3;95,96,0;,
3;95,97,96;,
3;97,98,96;,
3;97,7,6;,
3;97,6,98;,
3;100,99,8;,
3;8,11,100;,
3;102,100,101;,
3;14,103,101;,
3;102,101,103;,
3;102,104,99;,
3;17,8,99;,
3;18,105,103;,
3;106,102,103;,
3;22,23,107;,
3;106,103,105;,
3;14,18,103;,
3;24,108,105;,
3;18,24,105;,
3;27,107,109;,
3;102,106,104;,
3;17,99,104;,
3;100,102,99;,
3;108,109,105;,
3;109,106,105;,
3;109,104,106;,
3;28,109,108;,
3;24,29,108;,
3;29,30,108;,
3;107,104,109;,
3;107,17,104;,
3;23,17,107;,
3;110,33,31;,
3;31,35,111;,
3;37,38,112;,
3;113,112,38;,
3;41,42,114;,
3;114,113,41;,
3;42,44,115;,
3;115,114,42;,
3;44,46,116;,
3;116,115,44;,
3;48,49,117;,
3;117,118,48;,
3;52,53,119;,
3;55,56,120;,
3;120,119,55;,
3;58,59,121;,
3;121,120,58;,
3;61,122,60;,
3;60,122,123;,
3;123,65,64;,
3;64,60,123;,
3;112,124,37;,
3;38,41,113;,
3;125,113,114;,
3;114,126,125;,
3;114,115,126;,
3;115,116,126;,
3;127,126,116;,
3;128,119,120;,
3;119,128,52;,
3;120,121,128;,
3;126,127,129;,
3;118,128,121;,
3;117,128,118;,
3;73,74,130;,
3;130,131,73;,
3;74,76,130;,
3;132,130,76;,
3;76,79,133;,
3;133,132,76;,
3;79,81,134;,
3;134,133,79;,
3;81,83,135;,
3;135,134,81;,
3;83,84,135;,
3;128,135,52;,
3;117,130,132;,
3;132,128,117;,
3;132,133,128;,
3;135,128,133;,
3;133,134,135;,
3;136,116,46;,
3;46,86,136;,
3;123,87,65;,
3;122,33,110;,
3;122,88,33;,
3;88,122,61;,
3;35,89,111;,
3;89,91,137;,
3;137,111,89;,
3;92,137,91;,
3;137,92,111;,
3;93,111,92;,
3;126,129,138;,
3;138,111,126;,
3;110,123,122;,
3;110,138,129;,
3;111,138,110;,
3;129,127,110;,
3;111,110,31;,
3;110,127,123;;
 }
MeshTextureCoords {
 139;
0.814491;0.204883;,
0.814491;0.533774;,
0.802828;0.533866;,
0.802828;0.204975;,
0.775987;0.533869;,
0.781440;0.204977;,
0.768820;0.204887;,
0.768820;0.533779;,
0.721948;0.912323;,
0.676936;0.893489;,
0.698020;0.912812;,
0.705755;0.893489;,
0.653098;0.893489;,
0.667382;0.912365;,
0.626583;0.893489;,
0.639688;0.912362;,
0.702265;0.932166;,
0.726946;0.932241;,
0.618564;0.912323;,
0.637316;0.932163;,
0.667857;0.931732;,
0.703850;0.950214;,
0.706407;0.978910;,
0.724815;0.950214;,
0.612701;0.932241;,
0.636966;0.950214;,
0.668644;0.950214;,
0.681665;0.973938;,
0.655710;0.973938;,
0.615873;0.950214;,
0.634364;0.978910;,
0.911300;0.425283;,
0.853883;0.533959;,
0.933327;0.212031;,
0.888740;0.812195;,
0.938863;0.773981;,
0.790809;0.917646;,
0.760121;0.981814;,
0.753409;0.917646;,
0.785918;0.891518;,
0.800576;0.834553;,
0.745362;0.891518;,
0.767390;0.836812;,
0.797728;0.776380;,
0.770644;0.777680;,
0.805383;0.598777;,
0.763953;0.597564;,
0.697890;0.739836;,
0.700374;0.865943;,
0.670071;0.753401;,
0.729610;0.858925;,
0.673081;0.307089;,
0.669327;0.372731;,
0.644683;0.304753;,
0.695217;0.305020;,
0.663672;0.287044;,
0.679379;0.277288;,
0.731768;0.369574;,
0.712273;0.274603;,
0.756570;0.352018;,
0.919283;0.104212;,
0.908616;0.136027;,
0.870834;0.141864;,
0.835516;0.102980;,
0.880540;0.048135;,
0.835238;0.010914;,
0.781625;0.983085;,
0.817322;0.895051;,
0.841476;0.812199;,
0.841123;0.588419;,
0.695730;0.409407;,
0.848504;0.728556;,
0.662273;0.710388;,
0.621493;0.758588;,
0.613390;0.702310;,
0.656423;0.764051;,
0.650110;0.462071;,
0.678114;0.463599;,
0.660828;0.412916;,
0.633287;0.416731;,
0.646402;0.407598;,
0.625153;0.402559;,
0.645229;0.382456;,
0.622812;0.379411;,
0.632322;0.354000;,
0.807759;0.559857;,
0.774742;0.556041;,
0.784256;0.105238;,
0.908388;0.161318;,
0.951636;0.831706;,
0.922962;0.860817;,
0.993150;0.885372;,
0.915514;0.894731;,
0.862798;0.820183;,
0.861851;0.727547;,
0.802828;0.533866;,
0.802828;0.204975;,
0.775987;0.533869;,
0.781440;0.204977;,
0.698020;0.912812;,
0.676936;0.893489;,
0.653098;0.893489;,
0.667382;0.912365;,
0.639688;0.912362;,
0.702265;0.932166;,
0.637316;0.932163;,
0.667857;0.931732;,
0.703850;0.950214;,
0.636966;0.950214;,
0.668644;0.950214;,
0.853883;0.533959;,
0.888740;0.812195;,
0.790809;0.917646;,
0.785918;0.891518;,
0.800576;0.834553;,
0.797728;0.776380;,
0.805383;0.598777;,
0.697890;0.739836;,
0.729610;0.858925;,
0.673081;0.307089;,
0.695217;0.305020;,
0.731768;0.369574;,
0.870834;0.141864;,
0.835516;0.102980;,
0.781625;0.983085;,
0.817322;0.895051;,
0.841476;0.812199;,
0.841123;0.588419;,
0.695730;0.409407;,
0.848504;0.728556;,
0.662273;0.710388;,
0.656423;0.764051;,
0.678114;0.463599;,
0.660828;0.412916;,
0.646402;0.407598;,
0.645229;0.382456;,
0.807759;0.559857;,
0.922962;0.860817;,
0.861851;0.727547;;
}
}
 }
