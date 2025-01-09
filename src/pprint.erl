-module(pprint).
-export([pretty_print/1, pretty_print_file/1]).

pretty_print([]) ->
    ok;
pretty_print([FileName]) ->
    pretty_print_file(FileName);
pretty_print([FileName|FileNames]) ->
    pretty_print_file(FileName),
    io:format("~~~~~~"),
    pretty_print(FileNames).

pretty_print_file(FileName) when is_list(FileName) ->
    erl_tidy:file(FileName,[{stdout,true}]);
pretty_print_file(FileName) when is_atom(FileName) ->
    erl_tidy:file(atom_to_list(FileName),[{stdout,true}]);
pretty_print_file(FileName) when is_binary(FileName) ->
    erl_tidy:file(binary_to_list(FileName),[{stdout,true}]);
pretty_print_file(FileName) ->
    erl_tidy:file(FileName, [{stdout,true}]).

