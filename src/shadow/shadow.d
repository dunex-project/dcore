module shadow;
import core.sys.posix.time;
import core.sys.posix.stdio : FILE;

version (Posix):
extern(C):
@system:
nothrow:
@nogc:

alias sptime = int;

/**
    A record in the shadow database
*/
struct spwd {
    /**
        Login Name
    */
    char* sp_namp;

    /**
        Hashed passphrase
    */
    char* sp_pwdp;

    /**
        Date of last change
    */
    sptime sp_lstchg;

    /**
        Minimum number of days between changes
    */
    sptime sp_min;

    /**
        Maximum number of days between changes
    */
    sptime sp_max;

    /**
        Number of days to warn the user to change their password
    */
    sptime sp_warn;

    /**
        Number of days the account may be inactive
    */
    sptime sp_inact;

    /**
        Number of days since 1970-01-01 untill acount expires.
    */
    sptime sp_expire;

    /**
        Reserved flags
    */
    ulong sp_flag;   
}

/**
    Open database for reading
*/
void setspent();

/**
    Close database.
*/
void endspent();

/**
    Get next entry from database
*/
spwd* getspent();

/**
    Get shadow entry matching name
*/
spwd* getspnam(const(char)* name);

/**
    Read shadow entry from string
*/
spwd* sgetspent(const(char)* str);

/**
    Read next shadow entry from stream
*/
spwd* fgetspent(FILE* stream);

/**
    Write line containing shadow entry to stream.
*/
int putspent(spwd* entry, FILE* stream);

/**
    Lock /etc/passwd and /etc/shadow.
*/
int lckpwdf();

/**
    Unlock /etc/passwd and /etc/shadow.
*/
int ulckpwdf();