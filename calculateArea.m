function results = calculateArea(I)
% Image Segmentation using Color Thresholder App
BW = creatingMask(I);

% Calculating Area in pixels
props = regionprops('table',BW,'Area');
area_in_Pixels = sum(props.Area);

% Now converting Area(pixels) in km^2
pixel_to_km = (3200/669)^2;
areaKmSq = round(area_in_Pixels*pixel_to_km);

% Format into structure
results.BW = BW;
results.areaKmSq = areaKmSq;