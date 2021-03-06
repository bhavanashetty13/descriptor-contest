drop table if exists contests;
create table contests (
    id integer primary key autoincrement,
    name text not null
);

drop table if exists descriptors;
create table descriptors (
    id integer primary key autoincrement,
    value text not null,
    contest_id integer not null references contests (id)
);

drop table if exists users;
create table users (
    id integer primary key autoincrement,
    user_name text
);

drop table if exists answers;
create table answers (
    id integer primary key autoincrement,
    user_id integer not null references users (id),
    higher_ranked_descriptor_id integer not null references descriptors (id),
    lower_ranked_descriptor_id integer not null references descriptors (id)
);
