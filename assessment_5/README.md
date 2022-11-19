
# GCP

# Resources hierarchy in GCP

GCP resources follow well defined hierarchy structure.
Organization > Folder > Project > Resources

Resources are created in Project. Multiple Projects are contained in Folder. Organization can contain multiple folders.

Separate projects can be created for different environments. This provides complete isolation between different environments such as dev/test and production.

IAM policy can be applied on any level of hierarchy. All resources inherits policies of parent. We can’t restrict policy at lower level if permission is given at an higher level
