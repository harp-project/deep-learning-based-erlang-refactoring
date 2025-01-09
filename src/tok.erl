-module(tok).
-export([tokenize_files/1, tokenize_file/1, tokenize_strings/1, tokenize_string/1]).


tokenize_files([]) ->
    ok;
tokenize_files([FileName]) ->
    tokenize_file(FileName);
tokenize_files([FileName|FileNames]) ->
    tokenize_file(FileName),
    io:format("~~~~~~"),
    tokenize_files(FileNames).


tokenize_file(FileName) ->
    {_,FileContentBinary} = file:read_file(FileName),
    FileContent = binary_to_list(FileContentBinary),
    {_, Tokens, _} = erl_scan:string(FileContent),
    io:format("~p", [Tokens]).

%tok:tokenize_files(['hello.erl', 'hello2.erl']).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tokenize_strings([]) ->
    ok;
tokenize_strings([Str]) ->
    tokenize_string(Str);
tokenize_strings([Str|Strs]) ->
    tokenize_string(Str),
    io:format("~~~~~~"),
    tokenize_strings(Strs).

tokenize_string(Str) ->
    {_, Tokens, _} = erl_scan:string(Str),
    io:format("~p", [Tokens]).

%tok:tokenize_strings(["-module(hello).\n\t-export([hello_world/0]).\n\thello_world() -> io:fwrite(\"hello, world\n\")"]).