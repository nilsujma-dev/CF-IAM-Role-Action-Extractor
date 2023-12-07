## AWS IAM Role Action Extractor from CloudFormation Templates

This GitHub repository hosts a Python script designed to parse AWS CloudFormation templates and extract IAM role actions for documentation and analysis purposes. The script reads a CloudFormation template in JSON format, identifies IAM role resources, and extracts the actions defined within them, outputting the results to a CSV file.

### Script Functionality
1. **Resource Action Extraction**: Identifies and extracts actions from IAM Role resources defined in the CloudFormation template.
2. **Data Processing**: Iterates through all resources in the template, focusing specifically on `AWS::IAM::Role` type resources.
3. **Action Compilation**: Aggregates actions defined in each IAM role’s policies.
4. **CSV Report Generation**: Outputs the extracted data to a CSV file, including resource names, types, and associated actions.

### Key Features
- **Targeted IAM Role Analysis**: Efficiently parses CloudFormation templates to focus on IAM role definitions and their permissions.
- **Simplified Documentation**: Facilitates the documentation of IAM role actions, aiding in permission audits and compliance checks.
- **CSV Output for Easy Review**: The results are presented in a CSV format, making it easy to review, share, and integrate with other tools.

### Usage Scenario
The script is particularly useful for AWS administrators, security auditors, and compliance officers who need to analyze and document IAM role permissions defined in CloudFormation templates. It simplifies the process of understanding and reviewing the permissions associated with various roles in AWS environments.

### Prerequisites
- Python environment for script execution.
- A CloudFormation template in JSON format.

### Security and Best Practices
- Ensure that the CloudFormation templates being analyzed do not contain sensitive information before sharing the output CSV file.
- Review and validate the extracted IAM role actions to ensure they align with intended permissions and security policies.

---

This readme summary offers a comprehensive overview of the script's purpose and functionality, highlighting its role in extracting and documenting IAM role actions from AWS CloudFormation templates. It guides users through utilizing the script for efficient permission analysis and compliance reporting in AWS environments.
