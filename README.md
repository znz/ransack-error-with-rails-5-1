# error demo of ransack 1.8.3 with rails 5.1

```
% rails c
Running via Spring preloader in process 88888
Loading development environment (Rails 5.1.3)
irb(main):001:0> User.ransack(role_users_role_id_in: [1]).result
  User Load (0.3ms)  SELECT  "users".* FROM "users" LEFT OUTER JOIN "role_users" ON "role_users"."user_id" = "users"."id" WHERE "role_users"."role_id" IN (1) LIMIT ?  [["LIMIT", 11]]
=> #<ActiveRecord::Relation []>
irb(main):002:0> User.ransack(role_users_role_id_not_in: [1]).result
DEPRECATION WARNING: scope_chain is deprecated and will be removed from Rails 5.2 (called from irb_binding at (irb):2)
ArgumentError: wrong number of arguments (given 7, expected 5)
	from (irb):2
irb(main):003:0>
```
