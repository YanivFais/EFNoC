About poseidon
==============

poseidon is a very generic scheduler for time division multiplexing (TDM) network on chip.
poseidon uses Metaheuristics to optimize the schedule.

poseidon generates a schedule from a specification of the platform and a specification of the communication requirements.


Getting Started
===============
poseidon is integrated with the T-CREST project and is checked out by the Patmos configuration.
Because poseidon is very generic it can be used by other platforms as well.
Checking out and building poseidon can be done as follows:

    git clone https://github.com/t-crest/poseidon.git poseidon
    make


Platform Specification
----------------------

    <?xmlversion="1.0" encoding="UTF-8"?>
    <platform width="2" height="2">
        <topology type="bitorus"></topology>
    </platform>


Communication Specification
---------------------------

    <communication type="custom">
        <channel from="(0,0)" to="(1,1)" bandwidth="10" response="true" response-delay="2"/>
        <channel from="(0,1)" to="(2,2)" bandwidth="2" response="false"/>
        <channel from="(0,2)" to="(2,2)" bandwidth="2" response="false"/>
        <channel from="(1,1)" to="(2,2)" bandwidth="2" response="false"/>
    </communication>

TODO
----
- Because of pipelining the emptying in the end of a schedule can be folded to the beginning of the schedule.
- Calculation of the bisection bound for arbitrary communication patterns.
- Check local source and destination links before other links.
- Predecessor structure with constant lookup time for next free time slot.
- Termination of program when solution falls in some interval of lower bound.
