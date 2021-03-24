defmodule Alchemy.TemplateHelpers do
  @email "hello@alchemyconf.com"
  @mailchimp_url "http://eepurl.com/ht5NBT"
  @tito_url "https://ti.to/subvisual/alchemy-conf-2021"
  @twitter_url "https://twitter.com/Alchemy_Conf"

  @charities [
    %{
      name: "From Kibera With Love",
      website: "https://fromkiberawithlove.com/en",
      logo: "public/charities/fkwl.png",
      description:
        "From Kibera with Love is an NGOD located in the largest urban slum in Africa. It's focused on children who lack one fundamental right: their access to education. For these children education is a privilege and not a right and that's why FKWL currently finances and supports more than 70 children and their families providing education, extracurricular activities, health, food, clothing, footwear, and much more."
    },
    %{
      name: "Virar a Página",
      website: "https://www.virarapagina.org/",
      logo: "public/charities/vap.svg",
      description:
        "VaP (Virar a Página, which translates Turn the Page) is an emergency food aid in Braga, Portugal that started due to the closing of other social responses during the Covid-19's pandemic. VaP distributes prepared meals daily to those who need food assistance until they are ready to Turn the Page, either because they were able to overturn their situation or because it was possible to refer them to other established social aids. VaP is an independent project of the nonprofit YAY - Educação em Inclusão exclusively funded by private donations and secured by the work of volunteers."
    },
    %{
      name: "treethis",
      website: "https://treethis.com",
      logo: "public/charities/treethis.png",
      description:
        "treethis are a family social enterprise, born in 2014. Their belief is that we have the responsibility to be the change and protect the world we live in. treethis is all about our journey towards a more sustainable way of life. They are committed to the triple bottom line, by educating our community, partnering with different types of organizations and schools, and improving the lives of local communities around the world with tree planting."
    }
  ]

  def mailchimp_url, do: @mailchimp_url

  def tito_url, do: @tito_url

  def twitter_url, do: @twitter_url

  def email, do: @email

  def charities, do: @charities
end
