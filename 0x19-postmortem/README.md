Title: Lessons Learned from a Nginx Server Outage at Sage Digital Creative
Author: Olanrewaju Abdulquadri, Software Engineer
As a software engineer at Sage Digital Creative, a leading digital agency specializing in web and mobile applications, I recently experienced a significant outage that disrupted our services. In this blog, I'll share the details of the incident, the steps taken to resolve it, and the valuable lessons learned.
Issue Summary:
On April 11th, 2023, from 16:00 WAT to 18:30 WAT (2.5 hours), our main e-commerce website and mobile app experienced a complete outage. This caused all user traffic to be unable to access our platforms, affecting approximately 85% of our users during this period. The root cause was a misconfigured Nginx server update that caused the web servers to crash and become unresponsive.
The Incident Timeline:
16:00 WAT - Multiple monitoring alerts triggered, indicating high HTTP error rates and slow response times.
16:10 WAT - The site reliability engineering (SRE) team detected the issue through the monitoring system.
16:15 WAT - The SRE team began investigating, initially suspecting a spike in traffic or a backend database issue.
16:30 WAT - The team realized that the web servers were unresponsive and not serving traffic.
16:45 WAT - The incident was escalated to the engineering managers and the operations team.
17:00 WAT - The team investigated recent deployments and found a Nginx server update had been rolled out earlier in the day.
17:15 WAT - The team spent time debugging the Nginx configuration changes but hit a dead end.
17:45 WAT - The decision was made to roll back the Nginx server update to the previous stable version.
18:15 WAT - After rolling back the Nginx update, the web servers gradually became responsive again.
18:30 WAT - The monitoring alerts cleared, and the platform was fully operational.
Root Cause and Resolution:
The root cause was a misconfigured Nginx server update that introduced a bug, causing the web servers to crash when handling certain types of requests. To resolve the issue, the Nginx server update was rolled back to the previous stable version, allowing the web servers to operate normally again.
Corrective and Preventative Measures:
From this incident, we identified several areas for improvement:
Enhance the testing and validation process for Nginx server updates to catch configuration issues before deployment.
Implement automated integration tests to verify the functionality of the web servers after Nginx updates.
Add monitoring and alerting for Nginx server crashes and unresponsive web servers.
Document and train the operations team on the rollback process for Nginx server updates.
Conduct a retrospective to identify any gaps in the incident response process and make improvements.
Action Items:
To address the issues identified, we have set the following tasks:
Patch the Nginx server configuration file to fix the bug that caused the crash.
Set up automated integration tests for Nginx server updates.
Configure monitoring and alerting for Nginx server crashes and unresponsive web servers.
Update the Nginx server update documentation with detailed rollback instructions.
Schedule a retrospective meeting with the SRE, engineering, and operations teams.
While this outage was a challenging experience, it has provided us with valuable lessons and opportunities for improvement. At Sage Digital Creative, we are committed to continuously enhancing our processes and systems to ensure reliable and robust services for our clients.

