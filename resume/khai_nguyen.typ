#set document(keywords: "main", title: "Khai Nguyen", author: "Khai Nguyen", date: auto)

#import "resume.typ": resume, role

#show: doc => resume(
  me: "Khai Nguyen",
  contact: (
    location: "Irvine, California",
    phone: [(714)$space.hair$248-5424],
    email: "mailto:khaiatwork@gmail.com",
    website_link: "https://khaister.github.io",
    website_display: "khaister.github.io",
  ),
  doc,
)


== Senior Software Engineer

Senior Software Development Engineer with more than 8 years of full-stack software development experience in FinTech, real estate, and healthcare industries. Skilled with working collaboratively with technical and business teams to produce high quality software products from design to launch.


== Skills

- *Languages* Python, TypeScript/JavaScript, C\#
- *Frameworks* Django, React, Vue, Angular, .NET Core, WPF
- *Databases* PostgreSQL, SQL Server, MySQL, MongoDB
- *Cloud* AWS (ECS, EKS, Lambda, SNS, SQS, DynamoDB, Aurora, S3, ElastiCache for Redis)
- *Others* macOS, Linux, CI/CD, Git, GitHub Actions, Docker/Kubernetes/Helm Chart, Terraform


== Experience

#role(title: "Senior Software Engineer", org_url: "blinkhealth.com", start: "March 2022", end: "Present")

- Design and implement RESTful API for managing patient prescriptions using Django (with Django REST Framework), PostgreSQL, Redis, while working with consultants to ensure compliance with state and federal regulation
- Increase development team productivity and collaboration by bootstrapping GitHub repo, AWS infrastructure (Kubernetes, SQS, RDS, S3), secrets management (Hashicorp Vault), CI/CD pipeline (GitHub Actions)
- Integrate with various third-party vendor APIs for insurance eligibility check and claim submission, including supports for async response via webhooks
- Add new and enhance existing features for ReactJS web portal used by pharmacy team members, supporting various daily tasks such as patient insurance management, prescription management, and medication dispensing
- Participate in on-call rotations and build logs/metrics/alerts (New Relic) to ensure minimal downtime for core backend services


#role(title: "Senior Software Engineer", org_url: "apartments.com", start: "August 2019", end: "March 2022")

- Designed and implemented Messaging system using RESTful Web API and background service components deployed to AWS-hosted VPC
- Developed web service which integrated with third-party APIs to support online tour scheduling functionalities for apartment communities
- Mentored associate developers on software engineering in general, business domain knowledge, and development process
- Conducted technical interviews during hiring process to evaluate potential candidates for team


#role(title: "Software Development Engineer", org_url: "quickbridge.com", start: "October 2018", end: "July 2019")

- Developed and deployed an SMS solution (integrating with #link("https://www.twilio.com/en-us/messaging/channels/sms")[Twilio's SMS API]) for internal CRM web application within a three-month time frame, utilizing AngularJS, ASP.NET Core, and MS SQL Server, facilitating bidirectional communication between loan processing agents and clients
- Led effort to migrate codebase from .NET Framework to .NET Core to allow for hosting on Linux-based containers, resulting in reduction in infrastructure cost and increase in development velocity
- Trained team members on web API application design recommended practices and ASP.NET Core features


#role(title: "Software Engineer", org_url: "cudirect.com", start: "Jun 2015", end: "Sep 2018")

- Implemented features of various complexities for a loan originating platform using WPF, ASP.NET, and SQL Server
- Built microservices using NServiceBus stack to provide efficient publisher-consumer messaging between loan originating system and car dealership platform
- Planned and executed version control system conversion from TFVC to Git, trained developers across 4-5 teams on version control best practices, effectively increased development velocity and ease of collaboration


== Education

*B.Sc.* _cum laude_ in *Biochemistry* with *Computer Science* \
California State University, Long Beach
