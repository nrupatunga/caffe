
function test_getFeatureSlice()

    %TODO: add voc-release5/features to path.
    addpath('../../voc-release5/bin')
    addpath('../../voc-release5/features')

    im = imread('./pascal_000001.jpg');

    %bare bones model to run DPM's HOG code
    model.features.sbin = 4;
    model.padx = 8;
    model.pady = 8;
    model.interval = 10;    
    model.features.extra_octave = 0;

    pyra = featpyramid(im, model, model.padx, model.pady);


    templateSize = [6 10]; 
    imageSize = size(im);
    bbox.x1 = 10;   
    bbox.x2 = 90;
    bbox.y1 = 100;
    bbox.y2 = 148;
  
    %featureSlice = get_featureSlice(pyra, bbox, templateSize, imageSize);

    %imagesc(sum(featureSlice,3))
 
end 



