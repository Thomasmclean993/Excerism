defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    String.first(String.trim(name))

  end

  def initial(name) do
    # Please implement the initial/1 function
    String.capitalize("#{first_letter(name)}.")
  end

  def initials(name) do
    [first_name, last_name] = String.split(name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
          i1 = initials(full_name1)
          i2 = initials(full_name2)
          """
          ******       ******
        **      **   **      **
      **         ** **         **
     **            *            **
     **                         **
     **     #{i1}  +  #{i2}     **
      **                       **
        **                   **
          **               **
            **           **
              **       **
                **   **
                  ***
                   *
     """
    # Please implement the pair/2 function
  end
end
