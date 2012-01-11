require 'xmlsimple'
require 'net/http'

class Ipgp

  attr_reader :region, :city, :country, :code, :lng, :flag, :isp, :ip, :lat

  def initialize(ip, key = 'RyZBqulp7j')
    url = "http://www.ipgp.net/api/xml/#{ip}/#{key}"
    xml_data = Net::HTTP.get_response(URI.parse(url)).body
    data = XmlSimple.xml_in(xml_data)
    @region = data['Region'].first
    @city = data['City'].first
    @country = data['Country'].first
    @code = data['Code'].first
    @lng = data['Lng'].first
    @flag = data['Flag'].first
    @isp =  data['Isp'].first
    @ip = data['Ip'].first
    @lat = data['Lat'].first
  end
end

