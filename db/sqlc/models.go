// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.16.0

package tutorial

import (
	"database/sql"
	"time"
)

type Account struct {
	ID        int64
	Owner     string
	Balance   int64
	Currency  string
	CreatedAt time.Time
}

type Entry struct {
	ID        int64
	AccountID int64
	// it can be negative or positive
	Amount    sql.NullInt64
	CreatedAt time.Time
}

type Transfer struct {
	ID            int64
	FromAccountID int64
	ToAccountID   int64
	// it must be positive
	Amount    sql.NullInt64
	CreatedAt time.Time
}
