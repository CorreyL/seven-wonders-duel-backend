package main

type Civilian struct {
	Three	int `json:"3"`
	Four	int `json:"4"`
	Five	int `json:"5"`
	Six	int `json:"6"`
	Seven	int `json:"7"`
}

// TODO: See if there's a way to restrict values to 0 | 2 | 5 | 10
type Military int

// TODO: See if there's a way to restrict values to 0 | 5 | 12 | 21
type GrandTemple int
