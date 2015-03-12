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

- explore: agents                    # 'agents' is the explore to which we will join other views
  conditionally_filter:              # provides a default filter to all queries from the 'agents' explore
    orders.created_date: 30 days     # refers to the 'created_date' dimension in the 'orders' view and indicates '30 days' as the default value
    unless:                          # 'unless' parameter will remove conditionally_filter if any dimension below is included as a filter
      - orders.order_create_time     # if 'orders.created_time' is included as a filter, 'orders.created_date: 30 days' can be excluded
      - orders.order_create_week
      - orders.order_create_month
      - agents.full_name
      - agents.id
  joins:                                              # 'joins' section indicates which views to join to the explore 'order_items'
    - join: orders                                    # Results in the following SQL: LEFT JOIN orders ON orders.id = order_items.order_id 
      foreign_key: agents.adm_trans_guid              # 'sql_on:' lets you explicitely state which fields to join on when joining 'orders'
                                                      # 'sql:' lets you perform any kind of join by writing the SQL expression explicitly
                                                      # best practice is to use 'foreign_key:'. See the Docs for more info: http://docs.looker.com/documentation/reference/reference.html

- explore: orders

