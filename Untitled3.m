clear all
% s=kml2struct('res.kml')
load('resources.mat')
% worldmap({'Pakistan'})
% land = shaperead('landareas.shp', 'UseGeoCoords', true);
% geoshow(land, 'FaceColor', 'Green')


% cities = shaperead('worldcities', 'UseGeoCoords', true);
% geoshow(s, 'Marker', '.', 'UserData', 'red');
geoaxes;
            latSeattle = 5;
lonSeattle = 50;
latAnchorage = 65;
lonAnchorage = 95;

% geoplot(app.gx,[latSeattle lonSeattle ],[latAnchorage lonAnchorage],'g')
geobasemap darkwater
geolimits([latSeattle lonSeattle ],[latAnchorage lonAnchorage])
hold on
% geoplot(s(1:20).Lat,s(1:20).Lon)
% [x,y]=ginput(1)

for i=1:1:200
    if(s(i).side==1)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'bo')
            text(s(i).Lat,s(i).Lon,i+"inf Div")
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'bs')
            text(s(i).Lat,s(i).Lon,i+"Arm Div")
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'b*')
            text(s(i).Lat,s(i).Lon,i+"Arty Div")
            hold on   
        end
        
    elseif(s(i).side==2)
        if(s(i).type==1)
            geoplot(s(i).Lat,s(i).Lon,'ro')
            text(s(i).Lat,s(i).Lon,i+"inf Div")
            hold on
        elseif(s(i).type==2)
            geoplot(s(i).Lat,s(i).Lon,'rs')
            text(s(i).Lat,s(i).Lon,i+"Arm Div")
            hold on   
        elseif(s(i).type==3)
            geoplot(s(i).Lat,s(i).Lon,'r*')
            text(s(i).Lat,s(i).Lon,i+"Arty Div")
            hold on   
        end
    end
end




% text(s(100).Lat,s(100).Lon,s(100).Name)