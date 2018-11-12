class Scraping
  def self.firm_urls
    links = []
    agent = Mechanize.new
    next_url =""
    
    while true 
      current_page = agent.get("https://www.onecareer.jp/companies" + next_url)
      elements = current_page.search('.v2-companies__title-field a')
      elements.each do |ele|
        a = ele.get_attribute('href')
        a.slice!("/companies")
        links << a
      end
      
      next_link = current_page.at('.v2-pagination__next a')
      next_url = next_link.get_attribute('href')
      break if next_url == "/companies?page=25"
      next_url.slice!("/companies")
    end
    
    
    links.each do |link| # "/50"
      get_firm('https://www.onecareer.jp/companies' + link)
    end
  end
  
  def self.get_firm(link) # "https://www.onecareer.jp/companies/50"
    agent = Mechanize.new
    page = agent.get(link)
    name = page.search('.v2-company-header__name').inner_text if page.at('.v2-company-header__name')
    industry = page.search('.v2-company-header__category a').last.text.chomp if page.at('.v2-company-header__category a')
  
    firm = Firm.where(name: name).first_or_initialize
    firm.name = name
    firm.industry = industry
    firm.save
  end
end


    