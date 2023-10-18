#!/bin/bash

member_dir=content/member

print_array() {
    arr=("$@")
    N=$(echo ${#arr[@]})
    # echo $N
    for i in $(seq 0 $(($N-1))); do
        echo ${arr[$i]}
    done
}

id_workaround() {
    for i in $(seq 0 $(($1-1))); do 
        echo -n "1"
    done
}

# Get array with rows "order people.md"
readarray ordering_people < <(sed -n '/^- .*$/p' members.txt | sed 's/^- //' | nl)

# Extract order number
ordering=($(print_array "${ordering_people[@]}" | awk '{print $1}'))
# Extract people filename
people=($(print_array "${ordering_people[@]}" | awk '{print $2}'))
# Extract people id (people without file extension)
people_id=($(print_array ${people[@]} | awk -F".md" '{print $1}'))

for i in ${!people[@]}; do
    person_id_workaround=$(id_workaround ${ordering[i]})
    # Check if person file exists; if not, create it from template .member1.md
    ls $member_dir/${people[i]} || (cp $member_dir/\.member1.md $member_dir/${people[i]} && echo "Created ${people[i]}" || echo "Failed to create new member")
    # Update id
    # sed -i "s/^id = \".*$/id = \"${people_id[i]}\"/" $member_dir/${people[i]} || echo "Something went wrong"
    # Update ordering
    sed -i "s/^title = \"Member [0-9]\+\"$/title = \"Member $person_id_workaround\"/" $member_dir/${people[i]} || echo "Something went wrong"
    # Update foto path
    # sed -i "s|^portrait = .*|portrait = \"/portraits/${people_id[i]}\.jpg\"|" $member_dir/${people[i]} || echo "Something went wrong"
done
