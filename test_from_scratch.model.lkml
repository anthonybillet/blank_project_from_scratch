connection: "argolis"

include: "/views/*.view.lkml"

label: "Z) Simple Model"


explore: order_items {
  join: users {
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }
}
