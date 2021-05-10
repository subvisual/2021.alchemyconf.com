defmodule Alchemy.TemplateHelpers do
  @email "hello@alchemyconf.com"
  @mailchimp_url "http://eepurl.com/ht5NBT"
  @papercall_url "https://www.papercall.io/alchemy-conf"
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

  @speakers [
    %{
      name: "Michał Muskała",
      picture: "_includes/speaker_photos/michalmuskala.jpg",
      tagline: "Software engineer, open-source developer, speaker and trainer",
      description: """
      Software engineer, open-source developer, speaker and trainer. He
      contributes to multiple open source projects including Elixir and OPT and
      maintains some of his own including Jason - the most popular projects on
      hex.pm.
      <br>
      <br>
      When not programming, he enjoys reading, travelling, and sailing - no
      matter if sunny, rainy or stormy. It's even better if all of those are
      combined!
      """,
      twitter_handle: "michalmuskala",
      socials: []
    },
    %{
      name: "José Valim",
      picture: "_includes/speaker_photos/josevalim.jpg",
      tagline: "Creator of the Elixir programming language",
      description: """
      José Valim is the creator of the Elixir programming
      language and Chief Adoption Officer at Dashbit, a company that focuses on
      Sustainable Open Source and Continuous Adoption to boost the Elixir
      ecosystem. He is also a seasoned speaker, the author of three
      programming books, and an active member of the Open Source community
      """,
      twitter_handle: "josevalim",
      socials: []
    },
    %{
      name: "Ben Smith",
      picture: "_includes/speaker_photos/bensmith.jpg",
      tagline: "Bringing event sourcing to the functional world of Elixir",
      description: """
      Ben has been building event-driven Elixir applications
      for the past few years. His popular open source Commanded and EventStore
      libraries provide a solid technical foundation allowing companies to
      focus on modelling their business using domain-specific events.
      """,
      twitter_handle: "slashdotdash",
      socials: []
    },
    %{
      name: "Marlus Saraiva",
      picture: "_includes/speaker_photos/marlus.jpg",
      tagline: "Software Engineer at Dashbit and Open-source developer",
      description: """
      Marlus Saraiva is a Software Engineer with over 20 years
      of experience building systems and leading teams to deliver products in
      different domains and technologies. His work ranges from enterprise
      finance/accounting systems to open-source tools. Marlus currently enjoys
      being part of the Dashbit team creating exciting things like Broadway and
      Surface.
      """,
      twitter_handle: "MarlusSaraiva",
      socials: []
    }
  ]

  def mailchimp_url, do: @mailchimp_url

  def tito_url, do: @tito_url

  def papercall_url, do: @papercall_url

  def twitter_url, do: @twitter_url

  def email, do: @email

  def charities, do: @charities

  def speakers, do: @speakers |> Enum.sort_by(fn %{name: name} -> name end)
end
