class WebServicexCountry
  extend Savon::Model

  client wsdl: "http://www.webservicex.net/country.asmx?WSDL"

  global :convert_request_keys_to, :camelcase
  global :open_timeout, 30

  operations :get_country_by_country_code, :get_countries, :get_country_by_currency_code, :get_currencies,
             :get_currency_by_country, :get_currency_code, :get_currency_code_by_currency_name, :get_gmt_by_country,
             :get_isd, :get_iso_country_code_by_country_name

  # Get country name by country code
  def self.get_country_by_country_code(country_code)
    super(message: {country_code: country_code})
  end

  # Get all countries with ISO code
  def self.get_countries
    super
  end

  # Get country by currency code
  def self.get_country_by_currency_code(currency_code)
    super(message: {currency_code:currency_code})
  end

  # Get all currency,currency code for all countries
  def self.get_currencies
    super
  end

  # Get currency by country name
  def self.get_currency_by_country(country_name)
    super(message: {country_name: country_name})
  end

  # Get all currency code for each country
  def self.get_currency_code
    super
  end

  # Get currency by currency name
  def self.get_currency_code_by_currency_name(currency_name)
    super(message: {currency_name:currency_name})
  end

  # Get greenwich mean time(GMT) by country name
  def self.get_gmt_by_country(country_code)
    super(message: {country_code:country_code})
  end

  # Get International Dialing Code by country name
  def self.get_isd(country_name)
    super(message: {country_name:country_name})
  end

  # Get countries by country name
  def self.get_iso_country_code_by_country_name(country_name)
    super(message: {country_name: country_name})
  end
end