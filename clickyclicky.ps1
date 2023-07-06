# Name: Clicky Clicky
# Written by: Brad Voris
# Description: Left click the mouse 100000 times. This is useful in video games that require a large number of left clicks
# Additional Notes: This will work best on setting the mouse over the inactive window of the game you want the number of left clicks and running the script in ISE via F5, you may need to change the number of clicks to prevent crashing or hanging of the application.
# Version: 1.0

# import mouse_event
Add-Type -MemberDefinition '[DllImport("user32.dll")] public static extern void mouse_event(int flags, int dx, int dy, int cButtons, int info);' -Name U32 -Namespace W;

# loop to left mouse click the shit out of something
for ($num = 1 ; $num -le 100000 ; $num++){
    [W.U32]::mouse_event(6,0,0,0,0);
    }
