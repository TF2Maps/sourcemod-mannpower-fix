#include <sourcemod>
 
public OnPluginStart()
{
    Handle convar = FindConVar("tf_first_blood_on_kill");
    if (convar != INVALID_HANDLE)
    {
        int flags = GetConVarFlags(convar);
        SetConVarFlags(convar, (flags &~ FCVAR_CHEAT));
    }
}
