control_group := [
  "{sc2}",  ; Group 1 - Клавиша 1
  "{sc3}",  ; Group 2 - Клавиша 1
  "{sc4}",  ; Group 3 - Клавиша 1
  "{sc5}",  ; Group 4 - Клавиша 1
  "{sc6}",  ; Group 5 - Клавиша 1
  "{sc7}",  ; Group 6 - Клавиша 1
  "{sc20}", ; Group 7 - Клавиша 1
  "{sc21}", ; Group 8 - Клавиша 1
  "{scA}",  ; Group 9 - Клавиша 1
  "{scB}"   ; Group 10 - Клавиша 1
]

ability := [
  "{sc10}", ; Способность 1 - Q
  "{sc11}", ; Способность 2 - W
  "{sc12}", ; Способность 3 - W
  "",       ; Способность 4
  "",       ; Способность 5
  "{sc13}", ; Способность 6 - R (Ульта)
]

; 1-ый аргумент - номер группы, 2-ой аргумент - номер способности
$sc12::ExecuteAbility(1, 1)
$F::ExecuteAbility(7, 1)
$T::ExecuteAbility(4, 1)
$V::ExecuteMartyrdom()

ExecuteAbility(group_i, ability_i) {
  SendInput("^" control_group[10])
  SendInput(control_group[group_i] ability[ability_i])
  SendInput(control_group[10])
}

ExecuteMartyrdom() {
  SendInput("^" control_group[10])
  SendInput("{Space}{Tab}" ability[6])
  SendInput(control_group[10])
}

#SuspendExempt
$F3::Reload
$F10::Suspend
#SuspendExempt False