connection: "looker-private-demo"
label: "1) Ants Test"

include: "/views/*.view.lkml"

explore: products {}

explore: inventory_items {}

explore: products_joined {
  from: products
  join: inventory_items {
    type: left_outer
    relationship: one_to_many
    sql_on: ${products_joined.id} = ${inventory_items.product_id} ;;
  }
}
