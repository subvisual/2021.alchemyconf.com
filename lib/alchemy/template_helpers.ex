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
      socials: [],
      talkTitle: "<br><br>Xref.rs - Erlang static analysis in Rust",
      talkDescription: "<br>xref is an amazing and powerful static analysis tool for Erlang for verifying and undestanding cross-references between modules. It is an indispensible CI step, that can catch many silly mistakes, given the Erlang compiler does not check remote function calls in any way. Unfortunately, on sizeable codebases with many releases it can be rather slow, with runtimes reaching more than 30 minutes. In this talk, I'll present my new tool xref.rs, which re-implements a subset of the original xref toolchain in Rust, bringing the runtime on the same codebase, performing the same analysis to under a second. In doing so, we'll dive into the structure of the .beam files, and explore some common techniques for optimising static analysis tools."
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
      socials: [],
      talkTitle: "<br><br>Updates on Elixir v1.12",
      talkDescription: "<br>"
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
      socials: [],
      talkTitle: "<br><br>Modelling complex business domains with events",
      talkDescription: "<br>Discover how we can use domain events (simple facts relevant to a business) to model business processes. Using tools such as Event Storming we can design our applications around these events. Then write the code which implements our design using pure functions which emit immutable events and handlers for side-effects to interact with the outside world. "
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
      socials: [],
      talkTitle: "<br><br>Improving your Phoenix Liveview experience with Surface",
      talkDescription: "<br>"
    },
    %{
      name: "Evadne Wu",
      picture: "_includes/speaker_photos/evadne.jpg",
      tagline: "Software Engineer and Open-source developer",
      description: """
      Evadne is a software engineer specialising in end-to-end design and implementation
      of web-based applications. She contributes to open source projects in her
      spare time and is the author of various Elixir libraries such as Packmatic,
      Etso, and GenMagic. In her former career, Evadne specialised in application
      development based on Objective-C.
      """,
      twitter_handle: "evadne",
      socials: [],
      talkTitle: "<br><br>How I Learned to Stop Worrying and Love Macros",
      talkDescription: "<br>Eliminate duplicate code, expose cleaner interfaces and manage external changes effectively with macros! Used sparingly but judiciously, macros can make your development process faster, and more pleasant. Easily implement your own DSLs, generate code for service clients, and create consistent contexts, all with macros."
    },
    %{
      name: "Mrinal Wadhwa",
      picture: "_includes/speaker_photos/mrinal.jpg",
      tagline: "CTO at Ockam",
      description: """
      Mrinal Wadhwa is CTO at Ockam. He is passionate about Distributed Systems,
      Applied Cryptography and the Internet of Things. At Ockam, Mrinal and his team
      are building open source libraries that make it easy to establish end-to-end encrypted,
      mutually authenticated, granularly authorized communication between edge devices and cloud services.
      """,
      twitter_handle: "mrinal",
      socials: [],
      talkTitle: "<br><br>How can applications become more secure, private and dependable",
      talkDescription: "<br>Machines, within the Internet of Things, operate by exchanging messages, with cloud services and other connected machines. To support occasionally connected devices, low power radio protocols and containerized microservices - such messages usually travel via a number of queues and caches, often over a series of network layer connections before reaching their end-destination. 
      <br>
      In this talk, we’ll explore how applications can achieve end-to-end encryption, mutual authentication and granular authorization in such complex data flows."
    },
    %{
      name: "Mateusz Front",
      picture: "_includes/speaker_photos/mateusz.jpg",
      tagline: "Co-creator of Membrane",
      description: """
      Mateusz designs and develops various multimedia applications and libraries at Software Mansion.
      He enjoys solving complex problems in simple ways. He is a co-creator of Membrane.
      """,
      twitter_handle: "uusszz",
      social: [],
      talkTitle: "<br><br>Pipelining WebRTC - videoconferences in Elixir with Membrane Framework",
      talkDescription: "<br>WebRTC has become a state-of-the-art technology for real-time communication. In this talk, I want to show the audience how we implemented a WebRTC server in Elixir with the use of Membrane - an advanced multimedia processing framework. I’ll go through the benefits and challenges of the architectural approach we took and the possibilities given by the BEAM. I will also show how to integrate our server with an Elixir application."
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
