%% @author Marc Worrell <marc@worrell.nl>
%% @copyright 2010 Marc Worrell
%% @doc 'eq_day' filter, check if two dates are on the same day

%% Copyright 2010 Marc Worrell
%%
%% Licensed under the Apache License, Version 2.0 (the "License");
%% you may not use this file except in compliance with the License.
%% You may obtain a copy of the License at
%% 
%%     http://www.apache.org/licenses/LICENSE-2.0
%% 
%% Unless required by applicable law or agreed to in writing, software
%% distributed under the License is distributed on an "AS IS" BASIS,
%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%% See the License for the specific language governing permissions and
%% limitations under the License.

-module(filter_eq_day).
-export([eq_day/3]).

eq_day({Y,M,D}, {Y,M,D}, _Context) ->
    true;
eq_day({{Y,M,D}, _}, {{Y,M,D}, _}, _Context) ->
    true;
eq_day(_, _, _Context) ->
    false.
