#import "resume.typ": resume, role

// test

#show: doc => resume(
  me: "Khai Nguyen",
  contact: (
    location: "Los Angeles, California",
    phone: [+1$space.hair$(714)$space.hair$248-5424],
    email: "mailto:khaiatwork@gmail.com",
    website_link: "https://khaister.github.io",
    website_display: "khaister.github.io",
  ),
  doc,
)


== Senior Software Engineer

Senior Software Development Engineer with more than 8 years in full-stack software development experience in FinTech, Real Estate, Healthcare industries; strengths in working collaboratively with technical and business teams to produce high quality software products from design to launch.


== Skills

- *Languages* Python, TypeScript/JavaScript, C\#
- *Frameworks* Django, .NET Core, WPF, React, Vue, Angular
- *Databases* PostgreSQL, SQL Server, MySQL, MongoDB
- *Cloud* AWS (ECS, EKS, Lambda, SNS, SQS, DynamoDB, Aurora, S3, ElastiCache for Redis)
- *Others* macOS, Linux, CI/CD, Git, GitHub Actions, Docker/Kubernetes/Helm Chart, Terraform


== Experience

#role(title: "Senior Software Engineer", org_url: "blinkhealth.com", start: "Mar 2022", end: "Present")

- Building internal web API for managing patient's prescriptions
- Enhance django backend for insurance claim submission on patient's behalf, interfacing with various third-party vendors
- Perform quarterly on-call duties to ensure core services up and running with minimal downtime
- Design workflow automation models to allow for automatic retrying of failed insurance claim submission


#role(title: "Senior Software Engineer", org_url: "apartments.com", start: "Aug 2019", end: "Mar 2022")

- Designed and implement Messaging system using RESTful Web API and background service components, deployed to AWS-hosted VPC
- Built a web service from scratch to support Tour Scheduling functionalities for apartment communities
- Mentored associate developers on software engineering in general, business domain knowledge, and development process
- Led technical interviews during hiring process to evaluate potential candidates for team
- Led/collaborated with team members at all experience levels and coordinated with stakeholders to unblock process and ensure features were delivered as specified and in a timely manner


#role(title: "Software Development Engineer", org_url: "quickbridge.com", start: "Oct 2018", end: "Jul 2019")

- Built & launched from scratch within 3 months a SMS solution for internal CRM web app using Angular 4, allowing two-way communications between loan processing agents and applicants
- Built & maintained ASP.NET Core Web API for sending SMS messages via Twilio API
- Led effort of migrating codebases from .NET Framework to .NET Core, trained team members on N-Tier application design pattern and ASP.NET Core features


#role(title: "Software Engineer", org_url: "cudirect.com", start: "Jun 2015", end: "Sep 2018")

- Implemented features of various complexities for a loan originating platform using WPF, ASP.NET, and SQL Server
- Built microservices using NServiceBus stack to provide efficient publisher-consumer messaging between loan originating system and car loan application platform
- Led the migration effort from TFVC to Git for entire codebase, including training ~20 team members & promoting best practices, effectively increased development velocity and ease of collaboration


== Education

*B.Sc.* _cum laude_ in *Biochemistry* with *Computer Science* \
California State University, Long Beach (2015)
