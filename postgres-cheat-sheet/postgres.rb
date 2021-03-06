cheatsheet do
    title 'postgres'
    docset_file_name 'postgres'
    keyword 'postgres'
    category do
        id 'Server'
        entry do
            name 'Port'
            command "5432"
        end
    end
    category do
        id 'Client'
        entry do
            name 'Connect by host'
            notes <<-'END'
            pgcli:

            ```
            pgcli -h hostname dbname username
            ```

            psql:

            ```
            psql -h hostname -U username
            ```
            END
        end
    end
    category do
        id 'User management'
        entry do
            name 'Create a user with all permissions for a database, and set passsword'
            notes <<-'END'
            ```postgres
            create user myuser;
            alter user myuser with encrypted password 'password goes here';
            grant all privileges on database mydatabase to myuser;
            
            ```
            END
        end
    end
    category do
        id 'Java'
        entry do
            name 'JAR'
            notes <<-'END'
            ```groovy
            dependencies {
                compile "org.postgresql:postgresql:42.1.4"
            }
            ```

            See <https://jdbc.postgresql.org/> for the latest version number.
            END
        end
        entry do
            name 'JDBC url'
            notes <<-'END'
            ```
            jdbc:postgresql://hostname:5432/dbname
            ```
            END
        end
    end
    category do
        id 'CLI'
        entry do
            name 'List tables'
            notes <<-'END'
            ```
            \dt
            ```
            END
        end
        entry do
            name 'Describe table'
            notes <<-'END'
            ```
            \d tablename
            ```
            END
        end
    end
    category do
        id 'Creating a table'
        entry do
            name 'Auto-increment primary key'
            notes <<-'END'
            ```sql
            CREATE TABLE widgets (
                id SERIAL PRIMARY KEY
            );
            
            ```
            END
        end
        entry do
            name 'All values unique'
            notes <<-'END'
            ```sql
            CREATE TABLE ... (
                ...
                name VARCHAR(50) UNIQUE,
                ...
            )
            
            ```
            END
        end
    end
    category do
        id 'Modify table'
        entry do
            name 'Change type'
            notes <<-'END'
            ```sql
            ALTER TABLE mytable ALTER COLUMN name TYPE VARCHAR(200);
            ```
            END
        end
    end
end
