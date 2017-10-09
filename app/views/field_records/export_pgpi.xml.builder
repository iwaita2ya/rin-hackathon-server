xml.instruct! :xml, :version => 1.0
xml.gpx version:1.1, creator:"GDAL 1.11.3", "xmlns:xsi" => "http://www.w3.org/2001/XMLSchema-instance", "xmlns:ogr" => "http://osgeo.org/gdal", xmlns:"http://www.topografix.com/GPX/1/1", "xsi:schemaLocation" => "http://www.topografix.com/GPX/1/1 http://www.topografix.com/GPX/1/1/gpx.xsd" do
  xml.metadata do
    xml.bounds minlat:"42.93166600", minlon:"143.46217521", maxlat:"42.94038817", maxlon:"143.93229600"
  end
  @field_record_details.each do |field_record_detail|
    xml.wpt lat: field_record_detail.lat, lon: field_record_detail.lon do
      xml.name @tree_label[field_record_detail.jushu]
      xml.extensions do
        xml.tag!("ogr:elevation", 0.0)
        xml.tag!("ogr:comment", field_record_detail.tyokkei)
        xml.tag!("ogr:url_name", '')
      end
    end
  end
end