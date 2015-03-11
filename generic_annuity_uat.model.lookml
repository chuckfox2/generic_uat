########################################################################
######################### CONFIGURATIONS ###############################

- connection: generic_annuity_uat   # defines which database to query
- scoping: true                     # allows referencing fields across views (e.g. 'users.created_date' in the 'orders' view)

### INCLUDES ###                    # indicates which lookml files are referencable in the model
- include: "*.view.lookml"          # '*' includes all files with '.view.lookml' suffix
- include: "*.dashboard.lookml"     # '*' includes all files with '.dashboard.lookml' suffix
- template: liquid                  # enables liquid templating, used in 'html:'

########################################################################
########################################################################
#
### EXPLORES ###
# Please see README.lookml for an explanation of explores and best practices

- explore: orders

