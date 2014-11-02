Degree.create!([
  {school: "University of Massachusetts Dartmouth", title: "Bachelor of Science", major: "Management Information Systems", honors: "Cum Laude", year: "2006", image: "umassd.jpg"}
])
Experience.create!([
  {company: "Beverly High School", position: "Student Intern", start_date: "September 2000", end_date: "June 2002", city: "Beverly", state: "MA", summary: "As a student intern, supported technologies within the Beverly School System repairing hardware, virus/spyware removal, operating system upgrades, software installations, and networking."}
])
Skill.create!([
  {title: "HTML5", description: "HTML5 is a core technology markup language of the Internet used for structuring and presenting content for the World Wide Web.", image: "html5.svg"},
  {title: "Ruby", description: "A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write. This site is written using Ruby.", image: "ruby.svg"},
  {title: "Ruby on Rails", description: "Ruby on Rails® is an open-source web framework that’s optimized\r\nfor programmer happiness and sustainable productivity. It lets you\r\nwrite beautiful code by favoring convention over configuration. This site is built using Ruby on Rails.", image: "rails.svg"},
  {title: "PostgreSQL", description: "PostgreSQL is a powerful, open source object-relational database system. It has more than 15 years of active development and a proven architecture that has earned it a strong reputation for reliability, data integrity, and correctness. It runs on all major operating systems. This website uses PostgreSQL.", image: "postgres.svg"},
  {title: "Heroku", description: "Heroku is a cloud platform as a service (PaaS) supporting several programming languages. Heroku was acquired by Salesforce.com in 2010.", image: "heroku.svg"},
  {title: "PHP", description: "", image: "php.svg"},
  {title: "Microsoft SQL Server", description: "", image: "mssqlserver.svg"},
  {title: "GitHub", description: "Powerful collaboration, code review, and code management for open source and private projects.", image: "github.svg"},
  {title: "XML", description: "A markup language that defines a set of rules for encoding documents in a format which is both human-readable and machine-readable. It is defined by the W3C's XML 1.0 Specification and by several other related specifications, all of which are free open standards. Try navigating to http://localhost:3000/skills.xml to see the skills rendered as XML.", image: "xml.svg"},
  {title: "CSS3", description: "A style sheet language used for describing the look and formatting of a document written in a markup language. While most often used to change the style of web pages and user interfaces written in HTML and XHTML, the language can be applied to any kind of XML document, including plain XML, SVG and XUL. Along with HTML and JavaScript, CSS is a cornerstone technology used by most websites to create visually engaging webpages, user interfaces for web applications, and user interfaces for many mobile applications.", image: "css3.svg"},
  {title: "Ubuntu", description: "\"Linux for human beings.\"  Ubuntu is a Debian-based Linux operating system, with Unity as its default desktop environment.", image: "ubuntu.svg"}
])
