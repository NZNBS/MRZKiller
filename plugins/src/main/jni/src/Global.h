#ifndef ANDROID_MOD_MENU_GLOBAL_H
#define ANDROID_MOD_MENU_GLOBAL_H

struct {

    uintptr_t MainCameraTransform = 0x4C;
    uintptr_t HeadTF = 0x198; //0xAE5868 //esp
    uintptr_t HipTF = 0x19C;
    uintptr_t HandTF = 0x194;
    uintptr_t EyeTF = 0x1A0;
    uintptr_t IsClientBot = 0xBC;
    uintptr_t U3DStr = 0x1F5422C;
    uintptr_t U3DStrConcat = 0x1F529CC;
    uintptr_t Component_GetTransform = 0x2469A10;
    uintptr_t GetCameraTrackableEntityTransfrom = 0xBB0CB8;
    uintptr_t Transform_INTERNAL_GetPosition = 0x2A465FC;//esp
    uintptr_t Transform_INTERNAL_SetPosition = 0x2A466BC;
    uintptr_t GetForward = 0x2A46CE0;
    uintptr_t get_isAlive = 0xBB0CC0;
    uintptr_t GetPhysXPose = 0xB78EE4;
    uintptr_t IsFiring = 0xB51588;
	uintptr_t IsFalling = 0xB70360;
    uintptr_t IsCrouching = 0xB4DD10;
    uintptr_t get_IsSighting = 0xB515E8;
    uintptr_t get_isLocalPlayer = 0xB3F578;
    uintptr_t get_isLocalTeam = 0xB77BF8;
    uintptr_t get_isVisible = 0xB71CAC;
    uintptr_t set_aim = 0xB703B8;
    uintptr_t Camera_main_fov = 0x2462AC4;
    uintptr_t get_imo = 0xB744A0;
    uintptr_t set_esp = 0x126A198;
    uintptr_t GetAttackableCenterWS = 0xB6F56C;
    uintptr_t GetCharacterControllerTopPosition = 0xBA8F0C;
    uintptr_t get_NickName = 0xB6F9BC;
    uintptr_t WorldToScreenPoint = 0x24646F4;//esp
    uintptr_t get_height = 0x278DFF0;
    uintptr_t get_width = 0x278DF60;
    uintptr_t get_deltaTime = 0x2A4513C;
    uintptr_t CurrentUIScene = 0x2676CBC;
    uintptr_t Curent_Match = 0x2689BC8;
    uintptr_t Current_Local_Player = 0x2689F1C;
    uintptr_t GetLocalPlayerOrObServer = 0x268A5DC;
    uintptr_t CurrentLocalSpectator = 0x268A5DC;
    uintptr_t Player_Index = 0xFC3968;
    uintptr_t AddTeammateHud = 0x1194FD0;
    uintptr_t get_tele = 0x1281160;
    uintptr_t spof_uid = 0xB6F8CC;
    uintptr_t spof_nick = 0xB6F9C4;
    uintptr_t ShowDynamicPopupMessage = 0x11836B8;
    uintptr_t ShowPopupMessage = 0x1183840;
    uintptr_t GetLocalPlayer = 0x21DC724;
    uintptr_t GetCharacterHeight = 0xB7F734;
    uintptr_t set_height = 0x2468284;
    uintptr_t get_CharacterController = 0xB4022C;
    uintptr_t IsUserControlChanged = 0xB78E68;
    uintptr_t set_invitee_nickname = 0x28AFD44;
    uintptr_t Raycast = 0x275FB00;
    uintptr_t get_MyFollowCamera = 0xB58B64;
    uintptr_t IsSameTeam = 0x268B0EC;
    uintptr_t AttackableEntity_GetIsDead = 0x20BEF1C;
    uintptr_t AttackableEntity_IsVisible = 0x20D623C;
    uintptr_t Camera_WorldToScreenPoint =  0x24646F4;
    uintptr_t Camera_main = 0x2464CE4;
    uintptr_t wallPedra = 0xEF2890;
    uintptr_t nightMode = 0x1A2280;
    uintptr_t medKit1 = 0xA06010;
    uintptr_t medKit2 = 0x1A21DA0;
    uintptr_t medKit3 = 0xB950F8;
    uintptr_t ghostHack = 0x1280FD4;
    uintptr_t hdGraphic = 0x27895BC;
	uintptr_t rainbullets = 0x125C590; 
	uintptr_t nofiredelay = 0x23C77C0;
	uintptr_t ChangeWeaponDelay = 0xBA82C4;
	uintptr_t FpsMode = 0x125C8D4;
	uintptr_t AntiFlashBack = 0x11956AC;
	uintptr_t shootweater = 0xB4E2B4;
	uintptr_t nograsstree = 0x100C908;
	uintptr_t NoRecoil = 0x24B3A08;
	uintptr_t WallHack = 0xEE679C;
	
	uintptr_t Noelimine1 = 0x1710D18;
	
	uintptr_t ByPass1 = 0x2265CA0;
	uintptr_t ByPass2 = 0x22664D8;
	uintptr_t ByPass3 = 0x22664E4;
	uintptr_t ByPass4 = 0x22664F0;
	uintptr_t ByPass5 = 0x22664FC;
	uintptr_t ByPass6 = 0x2267188;
	uintptr_t ByPass7 = 0x22671A0;
	uintptr_t ByPass8 = 0x22671AC;
	uintptr_t ByPass9 = 0x2266494;
	uintptr_t ByPasss = 0x22673B8;

} Global;

#endif