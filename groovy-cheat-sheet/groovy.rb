cheatsheet do
    title 'groovy'
    docset_file_name 'groovy'
    keyword 'groovy'
    category do
        id 'Maps'
        entry do
            name 'Literal'
            notes <<-'END'
            ```groovy
            [name: "foo", "age": 43]
            
            ```
            END
        end
        entry do
            name 'Interpolate variable for key'
            notes <<-'END'
            ```groovy
            def name = "key"
            [(name): "foo"]
            ```
            END
        end
    end
    category do
        id 'Lists'
        entry do
            name 'Literal'
            notes <<-'END'
            ```groovy
            def lst = ["one", "two", "three"]
            ```
            END
        end
        entry do
            name 'Adding elements'
            notes <<-'END'
            [Official docs][1]

            ```groovy
            lst << "four"
            ```

            [1]: http://groovy-lang.org/groovy-dev-kit.html#_adding_or_removing_elements
            END
        end
        entry do
            name 'Filter'
            notes <<-'END'
            ```groovy
            lst.findAll { it.startsWith("t") }
            ```
            END
        end
        entry do
            name 'map'
            notes <<-'END'
            ```groovy
            [1,2,3].collect{it+1}

            // -> [2,3,4]
            ```
            END
        end
        entry do
            name 'map a dictionary'
            notes <<-'END'
            ```groovy
            [foo:"bar", baz:"quux"].collectEntries{k,v -> [k, v.length()]}
            
            // -> [foo:3, baz:4]
            ```
            END
        end
        entry do
            name 'flatMap'
            notes <<-'END'
            ```groovy
            // split returns primitive array which can't be casted to collection
            ["foo bar", "baz quux"].collectMany { it.split() as ArrayList }
            // -> ["foo", "bar", "baz", "quux"]
            ```
            END
        end
        entry do
            name 'Convert to set'
            notes <<-'END'
            ```groovy
            def st = ["one", "two", "three"] as Set
            ```
            END
        end
    end
    category do
        id 'Strings'
        entry do
            name 'String interpolation'
            notes <<-'END'
            ```
            def name = 'Guillaume' // a plain string
            def greeting = "Hello ${name}"

            assert greeting.toString() == 'Hello Guillaume'
            ```
            END
        end
    end
end
