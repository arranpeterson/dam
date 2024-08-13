# Digital Asset Management (DAM) suplimentary files.

The files in this repo support the work of building a DAM, the files provide scripts and notebooks to get started and how the process of vector embeddings can work within AWS environment.

## Important files

### Search.ipynb

This notebook can be run to setup the AWS services to support a simple environment which you can run code from the notebook to see embeddings being requested and returned to search a opensearch collection.

### Template.yaml

This Cloudformation template has the IAM roles and basic Lambda operations to to facilitate;

- Image Tagging
- Embedding Search
