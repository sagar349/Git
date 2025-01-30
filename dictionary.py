ec2_instance = [
    {
        "type":  "t2.mciro",
        "id": "instance-1"
    },
    {
        "type":  "t2.medium",
        "id":  "instance-2"
    },
    {
        "type":  "t2.xlarge",
        "id": "instance-3"
    }
]

print(ec2_instance[1]["type"])
print(ec2_instance[2]["id"])