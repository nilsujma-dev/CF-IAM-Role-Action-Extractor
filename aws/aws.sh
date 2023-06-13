import json
import csv

def extract_actions(resource):
    # Extract actions from a IAM Role resource
    # We assume that this role is defined with PolicyDocument
    if resource['Type'] == 'AWS::IAM::Role':
        actions = []
        policies = resource['Properties']['Policies']
        for policy in policies:
            for statement in policy['PolicyDocument']['Statement']:
                actions.extend(statement['Action'])
        return actions
    else:
        return []

def extract_resources(template):
    resources = template['Resources']
    result = []
    for resource_name, resource in resources.items():
        actions = extract_actions(resource)
        result.append({
            'ResourceName': resource_name,
            'ResourceType': resource['Type'],
            'Actions': actions
        })
    return result

# Load the CloudFormation template
with open('your_template.json', 'r') as f:
    template = json.load(f)

# Extract resources
resources = extract_resources(template)

# Write to CSV
with open('output.csv', 'w', newline='') as f:
    writer = csv.DictWriter(f, fieldnames=['ResourceName', 'ResourceType', 'Actions'])
    writer.writeheader()
    for resource in resources:
        writer.writerow(resource)

