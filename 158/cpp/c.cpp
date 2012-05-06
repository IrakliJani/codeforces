#include <iostream>
#include <vector>
#include <string>
using namespace std;

vector<string> curDir;
void cd ( string &fullDir );
void _cd( string nextDir );
void pwd();

int main()
{
    size_t num;
    string *cmds;
    
    cin >> num;

    cmds = new string[num];

    getline( cin,  cmds[0] );
    for( size_t i = 0; i < num; i++ )
        getline( cin, cmds[i] );

    for( size_t i = 0; i < num; i++ )
    {
        if( cmds[i] == "pwd" )
            pwd();
        else
        {
            string cddir = cmds[i].substr( 3 );
            cd( cddir );
        }
    }
    return 0;
}


void cd( string &fullDir )
{
    size_t pos = 0, found;

    if( fullDir.at( 0 ) == '/' )
    {
        _cd( "/" );
        fullDir.erase( 0, 1 );
    }

    while(true)
    {
        found = fullDir.find( '/',  pos );

        if( found == string::npos )
        {
            _cd( fullDir.substr( pos ) );
            break;
        }

        _cd( fullDir.substr( pos, found - pos ) );
        pos = found + 1;
    }

}

void pwd()
{
    cout << "/";
    for( size_t i = 0; i < curDir.size(); i++ )
        cout << curDir[i] << "/" ;
    cout << endl;
}

void _cd( string dir )
{
    if( dir == "/" )
        curDir.clear();
    else
    if( dir == ".." )
        curDir.pop_back();
    else
        curDir.push_back( dir );
}
