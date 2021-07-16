# Changes and Plans

## Changes in this branch

1. Padding has been added to nearly every place that
    needs it.
2. The file menu now truncates the recent file's name
    if it is too long.
3. "New" is renamed to "New Database" because that is
    what it actually does and it is hard for new users
    to understand what is actually happening.
4. The analysis engine's configuration menu layout has
    been fixed. (You might want to take a look at this
    one Steve, I know you don't care much about the rest.)
5. The README html file now has some CSS added to make it
    look nice.
6. The Analysis window now tries to align the moves to some
    degree. (It's a trade off between aligning them and space
    and I took a compromise between them.)

## Changes planned in the future

1. Replace the default pieces with the high quality pieces
    from the extra project files if they are under the
    correct license.
2. Write a "5 Minutes to SCID" tutorial that can be included
    as the starting in the help window so that any user opening
    the application for the first time gets a quick and
    practical introduction. This will allow them to just
    start using the program instead of learning it properly
    first and then using it. Letting them just start off will
    probably retain more of the users rather than the current
    approach.
3. Change the default options to something more modern.
4. Try and make the installation and user config dirs
    compatible with Microsoft's guidelines for storing
    user data. That way we should get rid of the hack of
    just storing everything in C:\SCIDvsPC-4.xx.
5. Change the menus to reflect how a user would actually
    use the options. Like making an "Analysis" menu with
    all the analysis engine, player/opening report, score
    graph etc. instead of putting them in "Tools".
6. Maybe (and I have realised this is quite far off), create
    an icon set that can replace the current ones.
