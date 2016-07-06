#Boris Bikes

This week we will be building a program that will run all the Docking Stations, simulate all the Bikes, and emulate all the infrastructure (vans, repair staff, and so on)

## User stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

| Object          | Messages         |
| --------------- |:----------------:|
| **Question**    |      **1**       |
| Bike            | working?         |
| Docking station | release_bike     |
| **Question**    |      **11**      |
| DockingStation  | dock_bike        |
| DockingStation  | bike_docked?     |
| **Question**    |    **12**        |
|Person           |                  |
|DockingStation   | bike_available? (-Didn't use this **Brainstorming**) |     
|   **Question**  |     **13**       |
|Maintainer       |                  |
|DockingStation   | bike_capacity (-Didn't use this **Brainstorming**)   |
| **Question**    |     **14**       |
|Maintainer       |                  |
|DockingStation   | default_cap (Didn't use this **Brainstorming**)      |



Authors: [Mali Michael](https://github.com/malimichael/) & [Laurence Kite](https://github.com/larryzx/) & [Nick Bowman](/https://github.com/NJBow/)
