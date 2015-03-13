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

- explore: agents                     # 'agents' is the explore to which we will join other views
  conditionally_filter:               # provides a default filter to all queries from the 'agents' explore
    orders.order_create_date: 60 days # refers to the 'created_date' dimension in the 'orders' view and indicates '30 days' as the default value
    unless:                           # 'unless' parameter will remove conditionally_filter if any dimension below is included as a filter
      - orders.order_create_time      # if 'orders.created_time' is included as a filter, 'orders.created_date: 30 days' can be excluded
      - orders.order_create_week
      - orders.order_create_month
      - agents.full_name
      - agents.id
  joins:                                              # 'joins' section indicates which views to join to the explore 'order_items'
    - join: orders                                    # Results in the following SQL: LEFT JOIN orders ON orders.id = order_items.order_id 
      foreign_key: agents.order_id              # 'sql_on:' lets you explicitely state which fields to join on when joining 'orders'
                                                      # 'sql:' lets you perform any kind of join by writing the SQL expression explicitly
                                                      # best practice is to use 'foreign_key:'. See the Docs for more info: http://docs.looker.com/documentation/reference/reference.html

- explore: funds                      # 'funds' is the explore to which we will join other views
  conditionally_filter:               # provides a default filter to all queries from the 'agents' explore
    orders.order_create_date: 60 days # refers to the 'created_date' dimension in the 'orders' view and indicates '30 days' as the default value
    unless:                           # 'unless' parameter will remove conditionally_filter if any dimension below is included as a filter
      - orders.order_create_time      # if 'orders.created_time' is included as a filter, 'orders.created_date: 30 days' can be excluded
      - orders.order_create_week
      - orders.order_create_month
      - funds.fund_desc
      - funds.fund_type
      - funds.payment_form
      - funds.payment_desc
      - funds.surrendering_carrier_name
      - funds.surrendered_product_type_code
  joins:                                              # 'joins' section indicates which views to join to the explore 'order_items'
    - join: orders                                    # Results in the following SQL: LEFT JOIN orders ON orders.id = order_items.order_id 
      foreign_key: funds.order_id               # 'sql_on:' lets you explicitely state which fields to join on when joining 'orders'
                                                      # 'sql:' lets you perform any kind of join by writing the SQL expression explicitly
                                                      # best practice is to use 'foreign_key:'. See the Docs for more info: http://docs.looker.com/documentation/reference/reference.html
- explore: investments                # 'investments' is the explore to which we will join other views
  conditionally_filter:               # provides a default filter to all queries from the 'agents' explore
    orders.order_create_date: 60 days # refers to the 'created_date' dimension in the 'orders' view and indicates '30 days' as the default value
    unless:                           # 'unless' parameter will remove conditionally_filter if any dimension below is included as a filter
      - orders.order_create_time      # if 'orders.created_time' is included as a filter, 'orders.created_date: 30 days' can be excluded
      - orders.order_create_week
      - orders.order_create_month
      - investments.cusip_num
      - investments.product_code
      - investments.product_full_name
  joins:                                              # 'joins' section indicates which views to join to the explore 'order_items'
    - join: orders                                    # Results in the following SQL: LEFT JOIN orders ON orders.id = order_items.order_id 
      foreign_key: investments.order_id               # 'sql_on:' lets you explicitely state which fields to join on when joining 'orders'
                                                      # 'sql:' lets you perform any kind of join by writing the SQL expression explicitly
                                                      # best practice is to use 'foreign_key:'. See the Docs for more info: http://docs.looker.com/documentation/reference/reference.html
- explore: orders
  conditionally_filter:               # provides a default filter to all queries from the 'orders' explore
    orders.order_create_date: 60 days # refers to the 'created_date' dimension in the 'orders' view and indicates '30 days' as the default value
    unless:                           # 'unless' parameter will remove conditionally_filter if any dimension below is included as a filter
      - orders.order_create_time      # if 'orders.created_time' is included as a filter, 'orders.created_date: 30 days' can be excluded
      - orders.order_create_week
      - orders.order_create_month

