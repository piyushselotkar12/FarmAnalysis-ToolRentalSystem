import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'We take your privacy seriously. Please read this privacy policy to learn more about our data handling practices.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Information Collection and Use',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We collect personal information such as your name, email address, and phone number when you sign up for our farming analysis and tool rental services. We use this information to provide you with the requested services and to communicate with you about your account and rental transactions.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We also collect usage data such as your IP address, browser type, and operating system when you use our services. We use this information to improve our services, personalize your experience, and analyze trends and usage patterns related to farming analysis and tool rental.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Information Sharing and Disclosure',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We may share your personal information with third-party service providers who assist us in providing the farming analysis and tool rental services or who perform services on our behalf. These service providers are bound by confidentiality obligations and are not authorized to use or disclose your information for any purpose other than providing the requested services.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We may also disclose your personal information if we believe that such disclosure is necessary to comply with applicable law, enforce our terms of service, protect our rights, property, or safety, or the rights, property, or safety of others.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Data Retention',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We will retain your personal information for as long as necessary to fulfill the purposes for which it was collected, including providing the farming analysis and tool rental services and complying with legal obligations. If you wish to request the deletion of your personal information, please contact us using the information provided below.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 16),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'If you have any questions or concerns about our privacy policy, please contact us at farmanalysistoolrental@gmail.com.',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
