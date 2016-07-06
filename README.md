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
```

| Object          | Messages         |
| --------------- |:----------------:|
| Person          |       **1**      |
| Bike            | working?         |
| Docking station | release_bike     |
| Person          |      **11**      |
| DockingStation  | dock_bike        |
| DockingStation  | bike_docked?     |

Authors: [Mali Michael](https://github.com/malimichael/) & [Laurence Kite](https://github.com/larryzx/)
