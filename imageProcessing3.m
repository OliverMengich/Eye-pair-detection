%imshow('im.jpg');
a = imread('faceTest1.jpg');
%a = imresize(a,0.3);
%imshow(a)
%to use some detector from the computer vision toolbox
detector = vision.CascadeObjectDetector('EyePairBig');
detector1 = vision.CascadeObjectDetector('Mouth');
% Some threshold on the images
detector.MergeThreshold = 31;
detector1.MergeThreshold = 71;

% To show the boxes on the images
bbox1 = step(detector1,a);
bbox = step(detector,a);
% to draw some boundary boxes on the images
out = insertObjectAnnotation(a,'rectangle',bbox,'Eyes');
out1 = insertObjectAnnotation(a,'rectangle',bbox1,'Mouth');

imshowpair(out,out1)

