# This file has been auto-generated. Do not modify it; it will be overwritten
# by rose_auto_create_model.pl automatically.
package SL::DB::ShopPart;

use strict;

use base qw(SL::DB::Object);

__PACKAGE__->meta->table('shop_parts');

__PACKAGE__->meta->columns(
  active           => { type => 'boolean', default => 'false', not_null => 1 },
  front_page       => { type => 'boolean', default => 'false', not_null => 1 },
  id               => { type => 'serial', not_null => 1 },
  itime            => { type => 'timestamp', default => 'now()' },
  last_update      => { type => 'timestamp' },
  mtime            => { type => 'timestamp' },
  part_id          => { type => 'integer' },
  shop_category    => { type => 'text' },
  shop_description => { type => 'text' },
  shop_id          => { type => 'integer' },
  show_date        => { type => 'date' },
  sortorder        => { type => 'integer' },
);

__PACKAGE__->meta->primary_key_columns([ 'id' ]);

__PACKAGE__->meta->unique_keys([ 'shop_id', 'part_id' ]);

__PACKAGE__->meta->allow_inline_column_values(1);

__PACKAGE__->meta->foreign_keys(
  part => {
    class       => 'SL::DB::Part',
    key_columns => { part_id => 'id' },
  },

  shop => {
    class       => 'SL::DB::Shop',
    key_columns => { shop_id => 'id' },
  },
);

1;
;