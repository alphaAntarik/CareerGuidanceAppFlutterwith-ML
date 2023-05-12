import 'package:flutter/material.dart';

import 'CareerDataModel.dart';

class Dataset with ChangeNotifier {
  List<CareerDataModel> careerlist = [
    CareerDataModel(
      careerName: 'Database Administratior',
      imagePath: 'assets/images/CareerImages/Database Administration_image.jpg',
      dataUrl: "https://en.wikipedia.org/wiki/Database_administration",
      animatedText:
          'Database administrators are professionals responsible for managing and maintaining database systems. ',
      edu:
          "To become a Database Administrator, a Bachelor's degree in Computer Science or related field is typically required. Knowledge and skills in database design, database management, SQL programming, and database security are essential. Employers also prefer candidates with industry certifications such as Oracle Certified Professional (OCP) and Microsoft Certified Database Administrator (MCDBA). ",
      skll:
          "Strong problem-solving skills, attention to detail, and the ability to work well under pressure are important attributes for a successful Database Administrator. Ongoing learning and staying current with database technologies is also essential.",
      esal:
          "According to Pay scale, the average salary for a database administrator in India is around Rs. 5,75,000 per year. However, salaries can vary depending on factors such as experience, location, and industry.",
      act:
          "Database administrators (DBAs) are responsible for the performance, security, and reliability of databases. They monitor, optimize, and maintain database systems to ensure that they operate efficiently and effectively. DBAs work with developers and other stakeholders to design, implement, and maintain databases that meet the organization's needs. They also develop backup and recovery procedures and ensure that data is secure and available to authorized users. Additionally, they analyze data requirements, design data models, and maintain the integrity of data.",
    ),
    CareerDataModel(
      careerName: 'Hardware Engineer',
      imagePath: 'assets/images/CareerImages/Hardware Engineer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Hardware_architect',
      animatedText:
          'Hardware engineers are professionals responsible for designing, developing, and testing computer hardware components and systems. ',
      edu:
          "Hardware engineers typically need a bachelor's degree in electrical engineering, computer engineering, or a related field. Some employers may prefer or require a master's degree. Coursework in hardware engineering typically includes electronics, computer architecture, digital circuits, computer design, and embedded systems. On-the-job training is also common.",
      skll:
          "Hardware engineers require a combination of technical, problem-solving, and interpersonal skills. They need to be well-versed in computer hardware and electronics, including computer architecture, microprocessors, and circuit design. They must also have strong analytical and problem-solving skills, as well as attention to detail, critical thinking, and the ability to work collaboratively on complex projects. Additionally, they should be proficient in project management, communication, and teamwork.",
      esal:
          "The salary of a hardware engineer in India varies based on factors such as experience, location, industry, and company size. According to Glassdoor, the average salary for a hardware engineer in India is around ₹7,00,000 per annum. However, this can range from around ₹3,50,000 to over ₹20,00,000 per annum depending on the above-mentioned factors.",
      act:
          "Hardware engineers design and develop computer systems and components such as processors, memory, and circuit boards. They test hardware components to ensure they function correctly, and oversee the manufacturing and installation process. They also provide technical support to customers and work with software engineers to integrate hardware and software systems.",
    ),
    CareerDataModel(
      careerName: 'Software Engineer',
      imagePath: 'assets/images/CareerImages/Software Engineer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Software Engineer',
      animatedText:
          'A Software Engineer is a professional responsible for designing, developing, and testing software applications.',
      edu:
          "Software engineering is a field that typically requires at least a bachelor's degree in computer science, software engineering, or a related field. Some employers may also prefer or require candidates to have a master's degree or relevant professional experience. Coursework often includes programming languages, algorithms, data structures, software design, and project management. Continuing education and certifications can also be helpful in staying current with industry advancements.",
      skll:
          "A software engineer should have strong technical skills such as programming, software design, algorithms, data structures, and database management. They should also have knowledge of software development methodologies, version control systems, testing and debugging, and continuous integration/continuous delivery (CI/CD) processes. Soft skills such as communication, problem-solving, and teamwork are also important.",
      esal:
          "The salary of a software engineer in India can vary depending on various factors such as experience, skills, and the company. According to Pay scale, the average salary for a software engineer in India is around INR 6.2 lakhs per year. However, it can range from around INR 3 lakhs to over INR 20 lakhs per year, depending on the above-mentioned factors.",
      act:
          "Software engineers design, develop, test, and maintain software systems. They analyze user needs, design software solutions, write and maintain code, and collaborate with cross-functional teams. They are also responsible for debugging, troubleshooting, and updating software, as well as keeping up-to-date with industry trends and best practices. They may also lead or participate in code reviews and contribute to the continuous improvement of the software development process.",
    ),
    CareerDataModel(
      careerName: 'Cyber Security Analyst',
      imagePath: 'assets/images/CareerImages/Cyber Security Analyst_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Cyber Security Analyst',
      animatedText:
          "A Cyber Security Analyst is a professional responsible for ensuring the security and integrity of an organization's computer systems and networks.",
      edu:
          "To become a cybersecurity analyst, a bachelor's degree in computer science, information technology, cybersecurity, or a related field is typically required. Some employers may prefer candidates with a master's degree in cybersecurity or a related field. Additionally, certifications such as Certified Information Systems Security Professional (CISSP) or Certified Ethical Hacker (CEH) may be beneficial.",
      skll:
          "Cyber security analysts require a range of technical and soft skills. Some important technical skills include knowledge of various operating systems, programming languages, network security concepts, encryption technologies, and penetration testing. Soft skills that are also important include critical thinking, problem-solving, communication, and attention to detail.",
      esal:
          "The salary of a Cyber Security Analyst in India can vary depending on factors such as experience, skills, and location. On average, a Cyber Security Analyst can earn anywhere between ₹300,000 to ₹1,500,000 per year in India",
      act:
          "As a Cyber Security Analyst, some of the key activities include monitoring computer networks for security breaches, conducting vulnerability assessments, developing and implementing security controls, performing threat analyses, investigating security incidents and recommending corrective actions, and staying up-to-date with the latest security technologies and trends. They are also responsible for conducting security audits and ensuring compliance with relevant regulations and standards.",
    ),
    CareerDataModel(
      careerName: 'Networking Engineer',
      imagePath: 'assets/images/CareerImages/Networking Engineer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Networking Engineer',
      animatedText:
          "A Networking Engineer is a professional responsible for designing, implementing, and maintaining an organization's computer networks.",
      edu:
          "A networking engineer typically needs a bachelor's degree in computer science, information technology, or a related field. However, some employers may accept an associate's degree or equivalent certifications. Ongoing training and certifications are often necessary to stay up-to-date with the latest technologies and best practices in the field.",
      skll:
          "Networking engineers need to have knowledge of various networking concepts and technologies, such as LAN/WAN networks, routing, switching, firewalls, and network security. They also need to have strong problem-solving skills and be able to work well under pressure.",
      esal:
          "The salary of a networking engineer in India varies depending on several factors such as experience, location, and company. On average, the salary of a networking engineer in India ranges from ₹300,000 to ₹1,200,000 per year.",
      act:
          "Networking engineers design, implement, and maintain computer networks, ensuring that they are running smoothly and efficiently. They configure network hardware and software, monitor network performance, troubleshoot issues, and perform regular maintenance tasks. They also work with other IT professionals to plan and implement network security measures and to ensure that networks are in compliance with organizational policies and regulations.",
    ),
    CareerDataModel(
      careerName: 'Software Developer',
      imagePath: 'assets/images/CareerImages/Software Developer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Software Developer',
      animatedText:
          "A Project Manager is a professional responsible for leading a team to achieve specific goals and objectives within a defined timeline and budget.",
      edu:
          "To become a software developer, one usually needs to have a degree in computer science, software engineering, or a related field. However, some developers may also have degrees in mathematics, physics, or other scientific fields. Additionally, employers may look for candidates who have relevant work experience, such as internships or previous software development roles. ",
      skll:
          "Continuing education and staying up-to-date with new technologies and programming languages are important for software developers.",
      esal:
          "The salary of a software developer in India can vary depending on factors such as experience, skills, location, and industry. According to Glassdoor, the average base salary of a software developer in India is around ₹600,000 per year. However, it can range from ₹300,000 to over ₹1,500,000 per year based on the aforementioned factors.",
      act:
          "A software developer is responsible for designing, developing, and maintaining software applications. They analyze user requirements, design software solutions, write code, test and debug software, and maintain software documentation. They also collaborate with cross-functional teams, follow software development processes, and stay updated with the latest technologies and tools to ensure efficient and effective software development.",
    ),
    CareerDataModel(
      careerName: 'Software Testing Engineer',
      imagePath:
          'assets/images/CareerImages/Software Testing Engineer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Software Testing Engineer',
      animatedText:
          "A Software Developer is a professional responsible for designing, developing, testing, and maintaining computer software applications.",
      edu:
          "To become a software testing engineer, one typically needs to have a bachelor's degree in computer science, information technology, or a related field. Some employers may also accept candidates with a degree in another field if they have relevant experience or training in software testing. Additionally, certification programs such as ISTQB (International Software Testing Qualifications Board) can enhance one's skills and credibility in the field. ",
      skll:
          "Strong problem-solving skills, attention to detail, and experience working with testing tools and methodologies are also highly valued in this profession.",
      esal:
          "The salary of a software testing engineer in India varies depending on factors such as experience, location, and company. On average, an entry-level software testing engineer can expect to earn around Rs. 3-5 lakhs per annum. With a few years of experience, this can increase to Rs. 6-8 lakhs per annum. Senior software testing engineers with more than 5 years of experience can earn upwards of Rs. 10 lakhs per annum.",
      act:
          "The activities of a software testing engineer typically include developing and executing test plans, identifying and reporting defects, collaborating with developers to resolve issues, creating and maintaining test documentation, and ensuring the overall quality of software products. They may also be involved in automated testing, regression testing, and performance testing.",
    ),
    CareerDataModel(
      careerName: 'Project Manager',
      imagePath: 'assets/images/CareerImages/Project Manager_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Project Manager',
      animatedText:
          "A Project Manager is a professional responsible for leading a team to achieve specific goals and objectives within a defined timeline and budget.",
      edu:
          "There is no one-size-fits-all educational requirement for becoming a project manager, but most employers prefer candidates with a bachelor's degree in a related field such as Business Administration, Engineering, or Computer Science. Certification in project management, such as the PMP certification, is also highly valued in the industry.",
      skll:
          "Project managers should possess excellent leadership, communication, and organizational skills, as well as an understanding of project management methodologies and tools such as Agile or Scrum.",
      esal:
          "The salary of a project manager in India varies depending on factors such as industry, location, company size, and experience. According to Payscale, the average salary for a project manager in India is around INR 1-2 lakhs per year for entry-level positions, INR 4-8 lakhs per year for mid-level positions, and INR 10-20 lakhs per year for senior-level positions.",
      act:
          "Project managers are responsible for planning, executing, and closing projects. They define project objectives, create project plans, manage resources, coordinate with stakeholders, and monitor progress. They ensure that projects are completed within the specified time frame, budget, and quality standards. Project managers also communicate project status, risks, and issues to stakeholders.",
    ),
    CareerDataModel(
      careerName: 'Content Writer',
      imagePath: 'assets/images/CareerImages/Content Writer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Content Writer',
      animatedText:
          "A Content Writer is a professional responsible for creating written content for a variety of mediums, such as websites, blogs, social media platforms, and marketing materials. ",
      edu:
          "There is no specific educational requirement for becoming a content writer, but a bachelor's degree in English, Journalism, Communications, or a related field can be helpful. Many content writers also develop their skills through practical experience, such as internships or freelance work.",
      skll:
          "In addition to formal education, content writers should possess excellent writing, research, and communication skills. They should be able to write in a clear and concise manner and adapt their writing style to different audiences and mediums.",
      esal:
          "The salary of a content writer in India varies depending on factors such as experience, industry, location, and employer. According to Payscale, the average salary for a content writer in India is around INR 3-5 lakhs per year, but this can range from INR 1.5 lakhs to INR 10 lakhs per year.",
      act:
          "A content writer conducts research and creates written content that meets the needs of a specific target audience. They collaborate with other teams, such as marketing or social media, to ensure the content is aligned with the overall strategy. Content writers also revise and proofread their work, ensuring it is error-free and meets the company's style and tone guidelines.",
    ),
    CareerDataModel(
      careerName: 'Data Scientist',
      imagePath: 'assets/images/CareerImages/Data Scientist_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Data Scientist',
      animatedText:
          "A Data Scientist is a professional responsible for analyzing and interpreting complex data to derive insights that drive business decisions.",
      edu:
          "To become a data scientist, one typically needs a bachelor's degree in computer science, mathematics, statistics, or a related field. A master's degree or a Ph.D. in data science, statistics, or computer science can also be helpful in pursuing a career in this field. Coursework typically includes statistics, linear algebra, calculus, machine learning theory, and data structures. ",
      skll:
          "Specialized training in programming languages and tools such as Python, R, SQL, and Tableau is also beneficial. Additionally, ongoing education and professional development are essential to stay current with the latest data science technologies and techniques.",
      esal:
          "The salary of a data scientist in India varies based on several factors such as experience, location, industry, and company size. On average, a data scientist in India can earn around INR 6-10 lakhs per annum. However, the salary can go up to INR 20-30 lakhs per annum or more for professionals with extensive experience and specialized skills in areas such as machine learning, artificial intelligence, and big data analytics. ",
      act:
          "A data scientist collects, cleans and analyzes large, complex data sets using statistical and machine learning methods. They build predictive models to extract insights and trends, and design experiments to test hypotheses. They communicate findings through data visualizations and collaborate with cross-functional teams to develop data-driven solutions while staying up-to-date with latest technologies.",
    ),
    CareerDataModel(
      careerName: 'AI ML Specialist',
      imagePath: 'assets/images/CareerImages/AI ML Specialist_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/AI ML Specialist',
      animatedText:
          "An AI ML Specialist is a professional who specializes in Artificial Intelligence and Machine Learning.",
      edu:
          "To become an AI/ML specialist, one typically needs a bachelor's degree in computer science, mathematics, or a related field. Additionally, a master's degree or a Ph.D. in computer science, artificial intelligence, or machine learning can be helpful in pursuing a career in this field. Coursework typically includes computer programming, statistics, linear algebra, data structures, algorithms, and machine learning theory. Specialized training in programming languages and tools such as Python, R, TensorFlow, PyTorch, and scikit-learn is also beneficial. Additionally, ongoing education and professional development are essential to stay current with the latest AI/ML technologies and techniques.",
      skll:
          "Coursework typically includes computer programming, statistics, linear algebra, data structures, algorithms, and machine learning theory. Specialized training in programming languages and tools such as Python, R, TensorFlow, PyTorch, and scikit-learn is also beneficial. Additionally, ongoing education and professional development are essential to stay current with the latest AI/ML technologies and techniques.",
      esal:
          "The salary of an AI/ML specialist in India varies based on experience, location, and the organization they work for. On average, an AI/ML specialist in India can earn around INR 6-10 lakhs per annum. However, the salary can go up to INR 25 lakhs per annum or more for professionals with extensive experience and specialized skills in areas such as deep learning, natural language processing, and computer vision.",
      act:
          "An AI/ML specialist is responsible for designing, developing, and implementing AI/ML solutions to solve complex business problems. They work with large datasets, create algorithms, build and train models, and deploy solutions. They also analyze and interpret data, identify trends and patterns, and communicate their findings to stakeholders to drive business decisions.",
    ),
    CareerDataModel(
      careerName: 'Cloud DevOps',
      imagePath: 'assets/images/CareerImages/Cloud DevOps_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Cloud DevOps',
      animatedText:
          "A Cloud DevOps professional is responsible for developing, deploying, and maintaining applications and services in cloud-based environments.",
      edu:
          "To become a Cloud DevOps professional, one typically needs a bachelor's degree in computer science, engineering, or a related field",
      skll:
          "Strong programming skills in languages such as Python, Java, and Ruby, and proficiency in cloud technologies such as Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP). They should also be familiar with DevOps principles, agile methodologies, and continuous integration/continuous deployment (CI/CD) tools and techniques. Continuous learning and staying up-to-date with the latest technologies and trends in cloud computing and DevOps are important in this field.",
      esal:
          "The salary of a Cloud DevOps professional in India varies based on experience, location, and skillset. On average, a Cloud DevOps Engineer in India can earn around INR 10-15 lakhs per annum.",
      act:
          "Cloud DevOps professionals automate software delivery pipelines, manage cloud infrastructure, monitor and optimize the performance of cloud-based systems, and work closely with stakeholders to ensure reliable and secure cloud-based applications. They troubleshoot and resolve issues, and stay up-to-date with the latest cloud computing and DevOps technologies and trends.",
    ),
    CareerDataModel(
      careerName: 'Data Analyst',
      imagePath: 'assets/images/CareerImages/Data Analyst_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Data Analyst',
      animatedText:
          "A Data Analyst is a professional responsible for collecting, processing, and performing statistical analyses on large datasets to derive insights and inform business decisions. ",
      edu:
          "To become a data analyst, one typically needs a bachelor's degree in a related field such as statistics, mathematics, computer science, or economics. Some employers may also require a master's degree in a relevant field.",
      skll:
          "Data analysts need to have strong analytical and problem-solving skills, proficiency in programming languages such as Python, R, and SQL, and experience working with data visualization tools such as Tableau and Power BI. They should also be familiar with statistical methods, data modeling, and machine learning techniques. Continuous learning and staying up-to-date with the latest technologies and trends in data analysis are important in this field.",
      esal:
          "The expected salary of a data analyst in India can vary depending on various factors such as years of experience, skill set, industry, and location. However, on average, a data analyst in India can expect to earn a salary of around INR 4-7 lakhs per annum for entry-level positions, INR 7-10 lakhs per annum for mid-level positions, and INR 10-15 lakhs per annum for senior-level positions. However, these figures are not set in stone and may vary from company to company, and the market demand for skilled data analysts is constantly increasing, leading to a higher earning potential.",
      act:
          "Data analysts collect, clean, and analyze large sets of data using statistical and computational techniques to identify patterns and draw insights. They design and implement data collection processes, create reports and visualizations to communicate insights, make data-driven recommendations, collaborate with stakeholders, and stay up-to-date with the latest technologies and trends.",
    ),
    CareerDataModel(
      careerName: 'Backend Developer',
      imagePath: 'assets/images/CareerImages/Backend developer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Backend Developer',
      animatedText:
          "A Backend Developer is a professional responsible for designing, developing, and maintaining the server-side of web applications.",
      edu:
          "To become a backend developer, one typically needs a bachelor's degree in computer science, software engineering, or a related field. However, some employers may also accept candidates with a strong programming background, relevant work experience, and certifications.",
      skll:
          "Backend developers need to have a strong foundation in programming concepts and proficiency in programming languages such as Java, Python, PHP, Ruby, and Node.js. Additionally, familiarity with databases, APIs, and web servers is essential. Continuous learning and staying up-to-date with the latest technologies and trends in web development are also important in this field.",
      esal:
          "The salary of a backend developer in India varies depending on several factors such as the level of experience, location, and industry sector. On average, a backend developer can earn around INR 4,00,000 to INR 12,00,000 per annum, with senior-level positions earning significantly more.",
      act:
          "Backend developers design and develop the server-side of web applications. Their activities include developing and maintaining databases, APIs, and web servers, implementing security protocols, testing and debugging code, and collaborating with front-end developers, web designers, and project managers to ensure the smooth functioning of web applications. They also stay up-to-date with the latest technologies and trends in web development.",
    ),
    CareerDataModel(
      careerName: 'BPO',
      imagePath: 'assets/images/CareerImages/BPO_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/BPO',
      animatedText:
          "BPO stands for Business Process Outsourcing. It refers to a business model where a company outsources its non-core business functions to a third-party provider.",
      edu:
          "The educational qualification required for a BPO job varies depending on the job role and the company's requirements. Most BPO companies typically require a minimum of a high school diploma or equivalent, and some may prefer candidates with an associate or bachelor's degree in a relevant field.",
      skll:
          "Good communication skills, computer literacy, and fluency in English are essential for most BPO positions.",
      esal:
          "In India, the salary of a BPO professional varies depending on several factors such as the level of experience, job role, industry sector, and location. On average, a BPO professional can earn around INR 2,00,000 to INR 5,00,000 per annum, with senior-level positions earning significantly more. ",
      act:
          "BPO activities involve performing non-core and back-office functions such as customer service, technical support, data entry, finance and accounting, HR services, and telemarketing. BPO companies offer customized, cost-effective, and scalable solutions to clients that allow them to focus on their core business functions. BPO services can be delivered through various modes, including offshore, onshore, and nearshore models.",
    ),
    CareerDataModel(
      careerName: 'KPO',
      imagePath: 'assets/images/CareerImages/KPO_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/KPO',
      animatedText:
          "KPO stands for Knowledge Process Outsourcing. It is a business model where a company outsources high-level, knowledge-based tasks to a third-party provider.",
      edu:
          "To pursue a career in KPO, a minimum bachelor's degree in a relevant field such as engineering, finance, management, or computer science is required. Many KPO companies also prefer candidates with postgraduate degrees or professional certifications such as CFA, CPA, or Six Sigma.",
      skll:
          "Strong analytical, research, and communication skills are essential to excel in KPO.",
      esal:
          "In India, the salary of a KPO professional varies depending on several factors such as the level of experience, job role, industry sector, and location. On average, a KPO professional can earn around INR 4,00,000 to INR 10,00,000 per annum, with senior-level positions earning significantly more.",
      act:
          "KPO activities involve performing high-end knowledge-based processes such as research and development, data analytics, intellectual property management, market research, financial analysis, and legal services. KPO companies provide customized, complex, and value-added solutions to clients that require specialized knowledge and expertise. KPO services can be delivered through various modes, including offshore, onshore, and hybrid models.",
    ),
    CareerDataModel(
      careerName: 'Graphics Designer',
      imagePath: 'assets/images/CareerImages/Graphics Designer_image.jpg',
      dataUrl: 'https://en.wikipedia.org/wiki/Graphics Designer',
      animatedText:
          "A Graphics Designer is a professional responsible for creating visual content for a variety of mediums, such as websites, advertisements, social media platforms, and marketing materials.",
      edu:
          "To become a graphic designer, one typically needs a minimum of a bachelor's degree in graphic design or a related field such as visual arts, multimedia, or communication design. Some employers may also accept candidates with an associate degree or a diploma in graphic design, provided they have a strong portfolio and relevant work experience.",
      skll:
          "Graphic designers need to have a strong foundation in art and design principles, as well as proficiency in various software tools such as Adobe Photoshop, Illustrator, and InDesign. Continuous learning and staying up-to-date with the latest design trends and technologies are also important in this field.",
      esal:
          "In India, the salary of a graphic designer varies depending on several factors such as the level of experience, industry sector, location, and job role. On average, a graphic designer can earn around INR 2,50,000 to INR 6,50,000 per annum, with senior-level positions earning significantly more.",
      act:
          "Graphic designers create visual concepts and designs using computer software or by hand to communicate ideas that inform and captivate consumers. They design and produce graphics and layouts for websites, advertising campaigns, magazines, brochures, and other marketing materials. They collaborate with clients, copywriters, and art directors and stay up-to-date with the latest design trends and technologies.",
    ),
  ];

  List<CareerDataModel> get careers {
  
    return [...careerlist];
  }

  List<CareerDataModel> get favoriteCareers {
    return careerlist.where((e) => e.isFavourite).toList();
  }

  CareerDataModel findByCareerName(String careerName) {
    notifyListeners();
    return careerlist.firstWhere((e) => e.careerName == careerName);
  }

  var _showFavoritesOnly = false;
  void showFavoritesOnly() {
    _showFavoritesOnly = true;
    notifyListeners();
  }

  
  void showAll() {
    _showFavoritesOnly = false;
    notifyListeners();
  }
}
