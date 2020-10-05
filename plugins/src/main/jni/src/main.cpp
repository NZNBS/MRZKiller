#include <src/Includes/Utils.h>
#include "Hook.h"
#include "Includes/Logger.h"
#include "KittyMemory/MemoryPatch.h"

#define HOOK(offset, ptr, orig) MSHookFunction((void *)getRealOffset(offset), (void *)ptr, (void **)&orig)

struct Patches {

    MemoryPatch nightMode;
    MemoryPatch wallPedra;
    MemoryPatch medKit1;
    MemoryPatch medKit2;
    MemoryPatch medKit3;
    MemoryPatch ghostHack;
    MemoryPatch hdGraphic;
	MemoryPatch rain1;
	MemoryPatch rain2;
	MemoryPatch rain3;
	MemoryPatch rain4;
	MemoryPatch rain5;
	MemoryPatch rain6;
	MemoryPatch rain7;
	MemoryPatch rain8;
	MemoryPatch rain9;
	MemoryPatch rain10;
	MemoryPatch rain11;
	MemoryPatch rain12;

	MemoryPatch WallHackCar;
	
	MemoryPatch nofiredelay;
	MemoryPatch shootinweater;
	MemoryPatch FpsMode;
	MemoryPatch BangBang;
	MemoryPatch ChangeWeaponDelay;
	MemoryPatch nograsstree;
	MemoryPatch NoRecoil;
	MemoryPatch WallHack;
	
	MemoryPatch NoEliminate1;
	MemoryPatch NoEliminate2;
	MemoryPatch NoEliminate3;

	MemoryPatch Fly;

    MemoryPatch GhostHackV2;
	
	MemoryPatch SpeedHackX1;
	MemoryPatch SpeedHackX2;
	MemoryPatch SpeedHackX3;
	MemoryPatch SpeedHackX4;
	MemoryPatch SpeedHackX5;
	
	MemoryPatch ByPass1;
	MemoryPatch ByPass2;
	MemoryPatch ByPass3;
	MemoryPatch ByPass4;
	MemoryPatch ByPass5;
	MemoryPatch ByPass6;
	MemoryPatch ByPass7;
	MemoryPatch ByPass8;
	MemoryPatch ByPass9;
	MemoryPatch ByPass10;

} Patches;

struct {

    float Fov_Aim = 0.998f;
    int semihs = 0;
    bool aimBotFov = false;
    bool aimScope = false;
    bool hs100 = false;
    bool hs50 = false;
    bool hs70 = false;
    bool hs20 = false;
    bool aimBody = false;
    bool aimbotauto = true;
    bool teleKill = false;
    bool Fly = false;
    bool VisibleCheck = false;

    bool AlertWorld = false;
    bool AlertAround = false;
    bool espLine = false;
    bool espDistance = false;
    bool espName = false;
    bool espNames = false;
    bool espBox = false;
    bool espSkeleton = false;
    bool espCircle = false;
    bool espNear = false;
    bool espAll = false;
    bool espWeapon = false;
    bool espFire = false;
	bool teleport = false;

    bool fakeName = false;
    bool night = false;
    bool ghost = false;
    bool hd = false;
    bool stone = false;
    bool medKit = false;
	bool NoEliminate = false;

    bool AIMBOT = false;
    bool SCOPE = false;
    bool FIRE = false;
    bool AUTO = false;
    bool VISIBLE = false;
	bool teleporting = false;
	bool teleporting2 = false;

    bool WallHackCar = false;
	
	bool nofiredelay = false;
	bool NoRecoil = false;
	bool FpsMode = false;
	bool NoTreeGrass = false;
	bool NoSmoke = false;
	bool Shootinwater = false;
	bool nochangedelay = false;
	bool WallHack = false;
	bool enableESP = false;

    int enemyCountAround = 0;
    int botCountAround = 0;
    int enemyCountWorld = 0;
    int botCountWorld = 0;

} MRZ;

bool active = true;
bool launched = false;

extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFTBR(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Ative a linha do corpo para o jogador inimigo",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"",
            /*19*/"TGVIS_HD Graphic_Gráficos HD em jogo",
            /*20*/"TGVIS_Night Mode_Você transforma o mapa no modo noturno",
            /*21*/"TG_Medkit_Você corre enquanto cura",
            /*22*/"TG_Ghost Hack_Você se torna invisível enquanto esta função está ativa",
            /*23*/"TG_Wall Stone_Você transfere pedras",
            /*24*/"TGVIS_Fake Name_Seu nome mudará para um predefinido. Esta função é apenas visual para você, não para os outros jogadores.",
            /*25*/"TG_Telekill PRO TEST_Você se teletransporta para o jogador mais próximo",
            /*26*/"SBVIS_Rain Bullets_Você tem balas de espingarda em todas as armas, úteis contra paredes gloo_0_12",
            /*27*/"TGVIS_First Person_Modo primeira pessoa no jogo",
            /*28*/"TGAIM_No Recoil_Você não tem dispersão de balas",
            /*29*/"TG_No Change Weapon Delay_Você não tem atraso ao trocar de arma",
            /*30*/"TG_Wheater Shoot_Atire na água",
            /*31*/"TGVIS_Anti FlashBack_Granadas ofuscantes, você pode ver quando esse efeito é aplicado a você",
            /*32*/"TGVIS_No Grass And Tress_Você remove as árvores e plantas do jogo",
            /*33*/"TG_Wall Hack_Atravesse as paredes (Deixe-o ativo por menos de 5 segundos ou seu personagem morrerá)",
            /*34*/"TG_No Eliminate ByPass_Impede que o personagem morra ao usar recursos de alto risco",
			/*35*/"S_Speed Reguler_Regule a velocidade do seu personagem_0_5",
            /*36*/"TGAIM_AIMBOT_Ativar a função aimbot",
            /*37*/"TGAIM_AIM SCOPE_Você vai olhar para o jogador inimigo quando mirar",
            /*37*/"TGIM_AIM AUTO_Você mira automaticamente",
            /*38*/"TGAIM_AIM FIRE_Ao atirar, você mira no jogador inimigo",
            /*39*/"TGAIM_Check Visible_Você mira no jogador que você tem que atirar",
            /*40*/"SBAIMSP_AIM SPOT_Escolha onde você quer atirar_0_2_NULL-Cabeça-Corpo",
            /*41*/"SBAIM_AIM FOV_Escolha o campo de visão que você deseja que o aimbot cubra_0_360"
    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}
extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFTLITEBR(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Ative a linha do corpo para o jogador inimigo",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"",
            /*19*/"TGVIS_HD Graphic_Gráficos HD em jogo",
            /*20*/"TGVIS_Night Mode_Você transforma o mapa no modo noturno",
            /*21*/"TG_Medkit_Você corre enquanto cura",
            /*22*/"TG_Ghost Hack_Você se torna invisível enquanto esta função está ativa",
            /*23*/"TG_Wall Stone_Você transfere pedras",
            /*24*/"",
            /*25*/"",
            /*26*/"SBVIS_Rain Bullets_Você tem balas de espingarda em todas as armas, úteis contra paredes gloo_0_12",
            /*27*/"TGVIS_First Person_Modo primeira pessoa no jogo",
            /*28*/"TGAIM_No Recoil_Você não tem dispersão de balas",
            /*29*/"TG_No Change Weapon Delay_Você não tem atraso ao trocar de arma",
            /*30*/"TG_Wheater Shoot_Atire na água",
            /*31*/"TGVIS_Anti FlashBack_Granadas ofuscantes, você pode ver quando esse efeito é aplicado a você",
            /*32*/"TGVIS_No Grass And Tress_Você remove as árvores e plantas do jogo",
            /*33*/"",
            /*34*/"TG_No Eliminate ByPass_Impede que o personagem morra ao usar recursos de alto risco",
			/*35*/"",
            /*36*/"TGAIM_AIMBOT_Ativar a função aimbot",
            /*37*/"TGAIM_AIM SCOPE_Você vai olhar para o jogador inimigo quando mirar",
            /*37*/"TGIM_AIM AUTO_Você mira automaticamente",
            /*38*/"TGAIM_AIM FIRE_Ao atirar, você mira no jogador inimigo",
            /*39*/"",
            /*40*/"SBAIMSP_AIM SPOT_Escolha onde você quer atirar_0_2_NULL-Cabeça-Corpo",
            /*41*/"SBAIM_AIM FOV_Escolha o campo de visão que você deseja que o aimbot cubra_0_360"
    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}

extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFTEN(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Activate the line from the body to the enemy player",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"",
            /*19*/"TGVIS_HD Graphic_HD graphics in play",
            /*20*/"TGVIS_Night Mode_Transform the map into night mode",
            /*21*/"TG_Medkit_You run while you heal",
            /*22*/"TG_Ghost Hack_You become invisible while this function is active",
            /*23*/"TG_Wall Stone_You transfer stones",
            /*24*/"TGVIS_Fake Name_Your name will change to a predefined one, This function is only visual for you, not for the other players",
            /*25*/"TG_Telekill PRO TEST_You teleport to the closest player",
            /*26*/"SBVIS_Rain Bullets_You have shotgun blast on all weapons, Useful on gloo walls_0_12",
            /*27*/"TGVIS_First Person_First person mode in the game",
            /*28*/"TGAIM_No Recoil_You have no bullet dispersal",
            /*29*/"TGVIS_No Change Weapon Delay_You have no time delay when changing weapons",
            /*30*/"TG_Wheater Shoot_Shoot in the water",
            /*31*/"TGVIS_Anti FlashBack_Blinding grenades, You can see when this effect is applied to you",
            /*32*/"TGVIS_No Grass And Tress_You remove the trees and plants from the game",
            /*33*/"TG_Wall Hack_Walk through the walls (Leave it active for less than 5 seconds or your character will die)",
            /*34*/"TG_No Eliminate ByPass_Prevents the character from dying when using high-risk features",
			/*35*/"S_Speed Reguler_Regulate your character's speed_0_5",
            /*36*/"TGAIM_AIMBOT_You are going to look at the enemy player when aiming",
            /*37*/"TGAIM_AIM SCOPE_Vas a mirar al jugador enemigo al apuntar",
            /*37*/"TGIM_AIM AUTO_You aim automatically",
            /*38*/"TGAIM_AIM FIRE_When shooting you aim at the enemy player",
            /*39*/"TGAIM_Check Visible_You aim at the player you have to shoot",
            /*40*/"SBAIMSP_AIM SPOT_Choose where you want to shoot_0_2_NULL-Head-Body",
            /*41*/"SBAIM_AIM FOV_Choose the field of view you want the aimbot to cover_0_360"

    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}
extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFTLITEEN(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Activate the line from the body to the enemy player",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"",
            /*19*/"TGVIS_HD Graphic_HD graphics in play",
            /*20*/"TGVIS_Night Mode_Transform the map into night mode",
            /*21*/"TG_Medkit_You run while you heal",
            /*22*/"TG_Ghost Hack_You become invisible while this function is active",
            /*23*/"TG_Wall Stone_You transfer stones",
            /*24*/"",
            /*25*/"",
            /*26*/"SBVIS_Rain Bullets_You have shotgun blast on all weapons, Useful on gloo walls_0_12",
            /*27*/"TGVIS_First Person_First person mode in the game",
            /*28*/"TGAIM_No Recoil_You have no bullet dispersal",
            /*29*/"TG_No Change Weapon Delay_You have no time delay when changing weapons",
            /*30*/"TG_Wheater Shoot_Shoot in the water",
            /*31*/"TGVIS_Anti FlashBack_Blinding grenades, You can see when this effect is applied to you",
            /*32*/"TGVIS_No Grass And Tress_You remove the trees and plants from the game",
            /*33*/"",
            /*34*/"TG_No Eliminate ByPass_Prevents the character from dying when using high-risk features",
			/*35*/"",
            /*36*/"TGAIM_AIMBOT_Activate the aimbot function",
            /*37*/"TGAIM_AIM SCOPE_You are going to look at the enemy player when aiming",
            /*37*/"TGIM_AIM AUTO_You aim automatically",
            /*38*/"TGAIM_AIM FIRE_When shooting you aim at the enemy player",
            /*39*/"",
            /*40*/"SBAIMSP_AIM SPOT_Choose where you want to shoot_0_2_NULL-Head-Body",
            /*41*/"SBAIM_AIM FOV_Choose the field of vision you want the aimbot to cover_0_360"
    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}

extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFT(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Activa la linea desde el cuerpo al jugador enemigo",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"TG_Fly Hack_Activas la funcion de volar",
            /*19*/"TGVIS_HD Graphic_Graficos HD en juego",
            /*20*/"TGVIS_Night Mode_Transformas el mapa en modo noche",
            /*21*/"TG_Medkit_Corres mientras te curas",
            /*22*/"TG_Ghost Hack_Te haces invisible mientras esta funcion este activa",
            /*23*/"TG_Wall Stone_Traspasas piedras",
            /*24*/"TGVIS_Fake Name_Tu nombre va a cambiar a uno predefinido, Esta funcion es solo visual para ti no para los demas jugadores",
            /*25*/"TG_Telekill PRO TEST_Te teletransportas al jugador mas cercano",
            /*26*/"SBVIS_Rain Bullets_Tienes disparo de escopeta en todas las armas, Util en paredes gloo_0_12",
            /*27*/"TGVIS_First Person_Modo Primera persona",
            /*28*/"TGAIM_No Recoil_No tienes dispersión de balas",
            /*29*/"TG_No Change Weapon Delay_No tienes tiempo de demora al cambiar de armas",
            /*30*/"TG_Wheater Shoot_Disparar en el agua",
            /*31*/"TGVIS_Anti FlashBack_Anti granadas cegadoras, Puedes ver cuando se te aplica este efecto",
            /*32*/"TGVIS_No Grass And Tress_Remueves los arboles y plantas del juego",
            /*33*/"TG_Wall Hack_Traspasar las paredes (Dejalo active menos de 5 segundos o tu personaje de morira)",
            /*34*/"TG_No Eliminate ByPass_Evita que el personaje muera al usar funciones de alto riesgo",
			/*35*/"S_Speed Reguler_Regula la velocidad de tu personaje_0_5",
            /*36*/"TGAIM_AIMBOT_Activa la funcion de aimbot",
            /*37*/"TGAIM_AIM SCOPE_Vas a mirar al jugador enemigo al apuntar",
            /*38*/"TGIM_AIM AUTO_Apuntas automaticamente",
            /*39*/"TGAIM_AIM FIRE_Al disparar apuntas al jugador enemigo",
            /*40*/"TGAIM_Check Visible_Apuntas al jugador que tienes a tiro",
            /*41*/"SBAIMSP_AIM SPOT_Elije a donde quieres disparar_0_2_NULL-Cabeza-Cuerpo",
            /*42*/"SBAIM_AIM FOV_Elige el campo de vision que quieres que abarque el aimbot_0_360",
			/*43*/"TG_Teleport_Apunta donde quieres teletransportate y salta"
    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}
extern "C"
JNIEXPORT jobjectArray JNICALL Java_com_mrz_NativeCalls_getListFTLITE(JNIEnv *env, jobject jobj){
    jobjectArray ret;
    int i;
    const char *features[]= {
            /*0*/"",
            /*1*/"",
            /*2*/"",
            /*3*/"",
            /*4*/"",
            /*5*/"",
            /*6*/"",
            /*7*/"TGESP_Draw Line_Activa la linea desde el cuerpo al jugador enemigo",
            /*8*/"",
            /*9*/"",
            /*10*/"",
            /*11*/"",
            /*12*/"",
            /*13*/"",
            /*14*/"",
            /*15*/"",
            /*16*/"",
            /*17*/"",
            /*18*/"",
            /*19*/"TGVIS_HD Graphic_Graficos HD en juego",
            /*20*/"TGVIS_Night Mode_Transformas el mapa en modo noche",
            /*21*/"TG_Medkit_Corres mientras te curas",
            /*22*/"TG_Ghost Hack_Te haces invisible mientras esta funcion este activa",
            /*23*/"TG_Wall Stone_Traspasas piedras",
            /*24*/"",
            /*25*/"",
            /*26*/"SBVIS_Rain Bullets_Tienes disparo de escopeta en todas las armas, Util en paredes gloo_0_12",
            /*27*/"TGVIS_First Person_Modo Primera persona",
            /*28*/"TGAIM_No Recoil_No tienes dispersión de balas",
            /*29*/"TG_No Change Weapon Delay_No tienes tiempo de demora al cambiar de armas",
            /*30*/"TG_Wheater Shoot_Disparar en el agua",
            /*31*/"TGVIS_Anti FlashBack_Anti granadas cegadoras, Puedes ver cuando se te aplica este efecto",
            /*32*/"TGVIS_No Grass And Tress_Remueves los arboles y plantas del juego",
            /*33*/"",
            /*34*/"TG_No Eliminate ByPass_Evita que el personaje muera al usar funciones de alto riesgo",
			/*35*/"",
            /*36*/"TGAIM_AIMBOT_Activa la funcion de aimbot",
            /*37*/"TGAIM_AIM SCOPE_Vas a mirar al jugador enemigo al apuntar",
            /*38*/"TGIM_AIM AUTO_Apuntas automaticamente",
            /*39*/"TGAIM_AIM FIRE_Al disparar apuntas al jugador enemigo",
            /*40*/"",
            /*41*/"SBAIMSP_AIM SPOT_Seleccione a donde quieres disparar_0_2_NULL-Cabeza-Cuerpo",
            /*42*/"SBAIM_AIM FOV_Seleccione el campo de vicion que quieres que abarque el aimbot_0_360"
    };

    size_t Total_Feature = sizeof(features) / sizeof(features[0]);

    ret= (jobjectArray)env->NewObjectArray(Total_Feature, env->FindClass("java/lang/String"), env->NewStringUTF(""));

    for(i=0;i<Total_Feature;i++)
    {
        env->SetObjectArrayElement(ret,i,env->NewStringUTF(features[i]));
    }
    return(ret);
}

extern "C"
JNIEXPORT void JNICALL Java_com_mrz_NativeCalls_changeToggle(JNIEnv *env, jobject thisObj, jint number) {
    int i = (int) number;
    switch (i)
    {

    case 0:
        MRZ.hs100 = !MRZ.hs100;
        break;

    case 1:
        MRZ.hs70 = !MRZ.hs70;
        break;

    case 2:
        MRZ.aimBody = !MRZ.aimBody;
        break;

    case 3:
        MRZ.aimScope= !MRZ.aimScope;
        break;

    case 5:
        MRZ.AlertWorld= !MRZ.AlertWorld;
        break;

    case 6:
        MRZ.AlertAround = !MRZ.AlertAround;
        break;

    case 7:
        MRZ.espFire = !MRZ.espFire;
        break;

    case 8:
        MRZ.espLine = !MRZ.espLine;
        break;

    case 9:
        MRZ.espBox = !MRZ.espBox;
        break;

    case 10:
        MRZ.espNames = !MRZ.espNames;
        break;

    case 11:
        MRZ.espName = !MRZ.espName;
        break;

    case 12:
        MRZ.espWeapon = !MRZ.espWeapon;
        break;

    case 13:
        MRZ.espAll = !MRZ.espAll;
        break;

    case 14:
        MRZ.espNear = !MRZ.espNear;
         break;

    case 15:
        MRZ.espCircle = !MRZ.espCircle;
        break;

    case 16:
        MRZ.espDistance = !MRZ.espDistance;
        break;

    case 17:
        MRZ.espSkeleton = !MRZ.espSkeleton;
        break;
		
	case 18:
        MRZ.Fly = !MRZ.Fly;
        if (MRZ.Fly) {
            Patches.Fly.Modify();
        } else {
            Patches.Fly.Restore();
        }
        break;
		
    case 19:
        MRZ.hd = !MRZ.hd;
        if (MRZ.hd) {
            Patches.hdGraphic.Modify();
        } else {
            Patches.hdGraphic.Restore();
        }
        break;

    case 20:
        MRZ.night = !MRZ.night;
        if (MRZ.night) {
            Patches.nightMode.Modify();
        } else {
            Patches.nightMode.Restore();
        }
        break;

    case 21:
        MRZ.medKit = !MRZ.medKit;
        if (MRZ.medKit) {
			Patches.medKit1.Modify();
            Patches.medKit2.Modify();
            Patches.medKit3.Modify();
        } else {
			Patches.medKit1.Modify();
            Patches.medKit2.Restore();
            Patches.medKit3.Restore();
        }
        break;

    case 22:
        MRZ.ghost = !MRZ.ghost;
        if (MRZ.ghost) {
            Patches.ghostHack.Modify();
        } else {
            Patches.ghostHack.Restore();
        }
        break;

    case 23:
        MRZ.stone = !MRZ.stone;
        if (MRZ.stone) {
            Patches.wallPedra.Modify();
        } else {
            Patches.wallPedra.Restore();
        }
        break;

    case 24:
        MRZ.fakeName = !MRZ.fakeName;
        break;

    case 25:
    MRZ.teleKill = !MRZ.teleKill;
        if(!MRZ.teleKill){
            Patches.ghostHack.Restore();
        }
        break;
	case 27:
    MRZ.FpsMode = !MRZ.FpsMode;
        if (MRZ.FpsMode) {
            Patches.FpsMode.Modify();
        } else {
			Patches.FpsMode.Restore();
        }
        break;
    case 28:
    MRZ.NoRecoil = !MRZ.NoRecoil;
        if (MRZ.NoRecoil) {
            Patches.NoRecoil.Modify();
        } else {
			Patches.NoRecoil.Restore(); 
        }
        break;
	case 29:
    MRZ.nochangedelay = !MRZ.nochangedelay;
        if (MRZ.nochangedelay) {
            Patches.ChangeWeaponDelay.Modify();
        } else {
			Patches.ChangeWeaponDelay.Restore(); 
        }
        break;	
	case 30:
    MRZ.Shootinwater = !MRZ.Shootinwater;
        if (MRZ.Shootinwater) {
            Patches.shootinweater.Modify();
        } else {
			Patches.shootinweater.Restore(); 
        }
        break;	
	case 31:
    MRZ.NoSmoke = !MRZ.NoSmoke;
        if (MRZ.NoSmoke) {
            Patches.BangBang.Modify();
        } else {
			Patches.BangBang.Restore(); 
        }
        break;
	case 32:
    MRZ.NoTreeGrass = !MRZ.NoTreeGrass;
        if (MRZ.NoTreeGrass) {
            Patches.nograsstree.Modify();
        } else {
			Patches.nograsstree.Restore(); 
        }
        break;
    case 33:
    MRZ.WallHack = !MRZ.WallHack;
        if (MRZ.WallHack) {
            Patches.WallHack.Modify();
        } else {
    		Patches.WallHack.Restore();
        }
        break;
	case 34:
    MRZ.NoEliminate = !MRZ.NoEliminate;
        if (MRZ.NoEliminate) {
            Patches.NoEliminate1.Modify();
        } else {
    		Patches.NoEliminate1.Restore();
        }
        break;
    case 36:
        MRZ.AIMBOT = !MRZ.AIMBOT;
    break;
    case 37:
        MRZ.SCOPE = !MRZ.SCOPE;
    break;
    case 38:
        MRZ.AUTO = !MRZ.AUTO;
    break;
    case 39:
        MRZ.FIRE = !MRZ.FIRE;
    case 40:
        MRZ.VISIBLE = !MRZ.VISIBLE;
    break;
	case 43:
		MRZ.teleport = !MRZ.teleport;
	break;	
    default:
        break;
    }
}

extern "C"
JNIEXPORT void JNICALL Java_com_mrz_NativeCalls_changeSeekBar( JNIEnv *env, jobject activityObject, jint feature, jint Value) {
    int i = (int) feature;
    switch (i) {

    case 42:
        if (Value > 0) {
            MRZ.aimBotFov = true;
            MRZ.Fov_Aim = 1.0f - (0.0027f * (float)Value);
        } else {
            MRZ.aimBotFov = false;
        }
        break;
		
	case 26:
        if (Value == 1) {
            Patches.rain1.Modify();
        } else if (Value == 2) {
			Patches.rain2.Modify();
        } else if (Value == 3) {
			Patches.rain3.Modify();
        } else if (Value == 4) {
			Patches.rain4.Modify();
        } else if (Value == 5) {
			Patches.rain5.Modify();
        } else if (Value == 6) {
			Patches.rain6.Modify();
        } else if (Value == 7) {
			Patches.rain7.Modify();
        } else if (Value == 8) {
			Patches.rain8.Modify();
		} else if (Value == 9) {
			Patches.rain9.Modify();
        } else if (Value == 10) {
			Patches.rain10.Modify();
        } else if (Value == 11) {
			Patches.rain11.Modify();
        } else if (Value == 12) {
			Patches.rain12.Modify();
        } else {
            Patches.rain1.Restore();
        }
        break;
		
	case 35:
        if (Value == 1) {
            Patches.SpeedHackX1.Modify();
        } else if (Value == 2) {
			Patches.SpeedHackX2.Modify();
        } else if (Value == 3) {
			Patches.SpeedHackX3.Modify();
        } else if (Value == 4) {
			Patches.SpeedHackX4.Modify();
        } else if (Value == 5) {
			Patches.SpeedHackX5.Modify();
        } else {
            Patches.SpeedHackX1.Restore();
        }
        break;
    case 41:
        if (Value == 1) {
            MRZ.hs100 = true;
            MRZ.aimBody = false;
        } else if (Value == 2) {
            MRZ.aimBody = true;
            MRZ.hs100 = false;
        } else  {
            MRZ.aimBody = false;
            MRZ.hs100 = false;
        }
    break;
    }
}

///Raycast 80% AimVisible Check
bool autokill(Vector3 target, Vector3 camera, float distance, void *player) {
    if(MRZ.AIMBOT == true) {
        void *Match = Curent_Match();
        if (MRZ.AUTO == true) {
            if (Match != NULL) {
                RayCastHit hit;
                Vector3 targetDir = target - camera;
                if (Physics_Raycast(NULL, camera, targetDir, &hit, distance)) {
                    void *hitObject = Component_get_gameObject(hit.collider);
                    void *enemyObject = Component_get_gameObject(Player_HeadCollider(player));
                    int layer = GameObject_get_layer(hitObject);
                    int layerHead = GameObject_get_layer(enemyObject);

                    if (layerHead && layer == 28) {

                        return true;

                    } else if (layerHead && layer == 11) {

                        return false;

                    }
                    if (layerHead && layer == 13) {

                        return true;

                    } else {

                        return false;

                    }
                } else {

                    return false;

                }
            } else {
				return false;
			}
        } else {
            return false;
        }
    } else {
        return false;
    }
	return false;
}
///Raycast 80% AimVisible Check
bool sisVisible(Vector3 target, Vector3 camera, float distance, void *player) {
    if(MRZ.AIMBOT) {
        void *Match = Curent_Match();
        if (MRZ.VISIBLE) {
            if (Match != NULL) {
                RayCastHit hit;
                Vector3 targetDir = target - camera;
                if (Physics_Raycast(NULL, camera, targetDir, &hit, distance)) {
                    void *hitObject = Component_get_gameObject(hit.collider);
                    void *enemyObject = Component_get_gameObject(Player_HeadCollider(player));
                    int layer = GameObject_get_layer(hitObject);
                    int layerHead = GameObject_get_layer(enemyObject);

                    if (layerHead && layer== 28) {

                        return true;

                    } else if (layerHead && layer == 11) {

                        return false;

                    }
                    if (layerHead && layer == 13) {

                        return true;

                    } else {

                        return false;

                    }
                } else {
                    return false;
                }
            } else {
				return false;
			}
        } else {
            return true;
        }
    } else {
        return false;
    }
	return false;
}
void AimBot(void *local_player, void *enemy_player) {

    int pose = GetPhysXPose(enemy_player);
    bool alive = get_isAlive(enemy_player);
    bool visible = get_isVisible(enemy_player);
    bool sameteam = get_isLocalTeam(enemy_player);
    bool isfalling = IsFalling(local_player);
    void *HeadTF = *(void **)((uintptr_t)enemy_player + Global.HeadTF);
    void *HipTF = *(void **)((uintptr_t)enemy_player + Global.HipTF);
    void *Main_Camera = *(void **)((uintptr_t)local_player + Global.MainCameraTransform);

    if (alive &&  pose != 8 && visible && !sameteam && HeadTF != NULL && Main_Camera != NULL && HipTF != NULL) {
        Vector3 EnemyLocation = Transform_INTERNAL_GetPosition(HeadTF);
        Vector3 CenterWS = GetAttackableCenterWS(local_player);
        bool scope = get_IsSighting(local_player);
        float distance = Vector3::Distance(CenterWS, EnemyLocation);
        bool isVisiblee = sisVisible(EnemyLocation, CenterWS, distance,enemy_player);
        bool AutoKsill = autokill(EnemyLocation, CenterWS, distance,enemy_player);

        Vector3 PlayerLocation = Transform_INTERNAL_GetPosition(Main_Camera);
        Quaternion PlayerLook = GetRotationToLocation(EnemyLocation, 0.1f, PlayerLocation);
        Quaternion PlayerLook2 = GetRotationToLocation(Transform_INTERNAL_GetPosition(HipTF), 0.1f, PlayerLocation);
        Vector3 fwd = GetForward(Main_Camera);
        Vector3 nrml = Vector3::Normalized(EnemyLocation - PlayerLocation);
        float PlayerDot = Vector3::Dot(fwd, nrml);

        if (MRZ.espFire) {
            void *imo = get_imo(local_player);
            if (imo != NULL && distance > 1.0f) {
                set_esp(imo, CenterWS, EnemyLocation);
            }
        }

        if (MRZ.AlertWorld) {
            monoString *alert = FormatCount(MRZ.enemyCountWorld, MRZ.botCountWorld);
            if (alert != NULL) {
                ShowDynamicPopupMessage(alert);
            }
        }

        if (MRZ.AlertAround) {
            monoString *alert = FormatCount(MRZ.enemyCountAround, MRZ.botCountAround);
            if (alert != NULL) {
                ShowPopupMessages(alert);
            }
        }

        if (MRZ.espNames) {
            void *ui = CurrentUIScene();
            if (ui != NULL) {
                monoString *nick = get_NickName(enemy_player);
                monoString *distances = U3DStrFormat(distance);
                AddTeammateHud(ui, nick, distances);
            }
        }

        if (MRZ.fakeName) {
            spofNick(local_player);
        }
		
		if (MRZ.teleport) {
			Quaternion aimlocation = get_aim(local_player);
			if (isfalling && !MRZ.teleporting2){
				Patches.ghostHack.Modify();
				Vector3 MountF = (aimlocation.X , aimlocation.Y , aimlocation.Z);
				Transform_INTERNAL_SetPosition(Component_GetTransform(local_player), Vvector3(MountF.X, 0.0f, 5.0f));
				MRZ.teleporting2 = true;
			} else if( !isfalling ) {
				Patches.ghostHack.Restore();
				MRZ.teleporting2 = false;
			}
        }

        if (MRZ.teleKill) {
            void *_MountTF = Component_GetTransform(enemy_player);
            if (_MountTF != NULL && isfalling && ((PlayerDot > 0.998f && !MRZ.aimBotFov) || (PlayerDot > MRZ.Fov_Aim && MRZ.aimBotFov)) && MRZ.teleporting == false && MRZ.teleKill) {
				Patches.GhostHackV2.Modify();
                Vector3 MountTF =
                        Transform_INTERNAL_GetPosition(_MountTF) - (GetForward(_MountTF) * 1.6f);
			Transform_INTERNAL_SetPosition(Component_GetTransform(local_player), Vvector3(MountTF.X, MountTF.Y + 3.0f, MountTF.Z));
			MRZ.teleporting = true;
            } else if ( !isfalling && MRZ.teleKill) {
				Patches.GhostHackV2.Restore();
				MRZ.teleporting = false;
                if (MRZ.aimBody && (PlayerDot > 1.0f - (0.0027f * (float)360))) {
                    set_aim(local_player, PlayerLook2);
                }
                if (MRZ.hs100 && (PlayerDot > 1.0f - (0.0027f * (float)360))) {
                    set_aim(local_player, PlayerLook);
                }
            }
        }
		if(MRZ.AIMBOT && !MRZ.VISIBLE) {
			if ((scope && MRZ.SCOPE) && ((PlayerDot > 0.998f && !MRZ.aimBotFov) || (PlayerDot > MRZ.Fov_Aim && MRZ.aimBotFov)) && MRZ.AIMBOT && !MRZ.VISIBLE) {
				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
			}
			if (MRZ.AUTO && AutoKsill) {
				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
			}
			
			if (MRZ.AUTO && AutoKsill) {
				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
			}


			bool firing = IsFiring(local_player);
			if ((MRZ.FIRE && firing) && ((PlayerDot > 0.998f && !MRZ.aimBotFov) || (PlayerDot > MRZ.Fov_Aim && MRZ.aimBotFov)) && MRZ.AIMBOT && !MRZ.VISIBLE) {

				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
				if (MRZ.hs70) {
					if (MRZ.aimbotauto)
					{
						set_aim(local_player, PlayerLook);
						++MRZ.semihs;
					} else {
						set_aim(local_player, PlayerLook2);
						--MRZ.semihs;
					}

					if (MRZ.semihs == 6)
					{
						MRZ.aimbotauto = false;
					} else if (MRZ.semihs == 0) {
						MRZ.aimbotauto = true;
					}
					if (MRZ.semihs > 6 || MRZ.semihs < 0)
					{
						MRZ.semihs = 3;
						MRZ.aimbotauto = true;
					}
				}
			}
		}
		if(MRZ.AIMBOT && MRZ.VISIBLE) {
			if ((scope && MRZ.SCOPE) && ((PlayerDot > 0.998f && !MRZ.aimBotFov) || (PlayerDot > MRZ.Fov_Aim && MRZ.aimBotFov)) && (isVisiblee && !AutoKsill) && MRZ.AIMBOT && MRZ.VISIBLE) {
				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
			}
			if (MRZ.AUTO && AutoKsill) {
				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
			}

			bool firing = IsFiring(local_player);
			if ((MRZ.FIRE && firing) && ((PlayerDot > 0.998f && !MRZ.aimBotFov) || (PlayerDot > MRZ.Fov_Aim && MRZ.aimBotFov)) && (isVisiblee && !AutoKsill) && MRZ.AIMBOT && MRZ.VISIBLE) {

				if (MRZ.aimBody) {
					set_aim(local_player, PlayerLook2);
				}
				if (MRZ.hs100) {
					set_aim(local_player, PlayerLook);
				}
				if (MRZ.hs70) {
					if (MRZ.aimbotauto)
					{
						set_aim(local_player, PlayerLook);
						++MRZ.semihs;
					} else {
						set_aim(local_player, PlayerLook2);
						--MRZ.semihs;
					}

					if (MRZ.semihs == 6)
					{
						MRZ.aimbotauto = false;
					} else if (MRZ.semihs == 0) {
						MRZ.aimbotauto = true;
					}
					if (MRZ.semihs > 6 || MRZ.semihs < 0)
					{
						MRZ.semihs = 3;
						MRZ.aimbotauto = true;
					}
				}
			}
		}
    }
}
void (*LateUpdate)(void *componentPlayer);
void *fakeEnemy;
void _LateUpdate(void *player){
    if (player != NULL) {
        void *local_player = Current_Local_Player();
        if (local_player == NULL){
            local_player = GetLocalPlayerOrObServer();
        }
        if (local_player != NULL){
            void *current_match = Curent_Match();
            if (current_match != NULL) {
                void *fakeCamPlayer = get_MyFollowCamera(local_player);
                void *fakeCamEnemy = get_MyFollowCamera(player);
                if (fakeCamPlayer != NULL && fakeCamEnemy != NULL){
                    void *fakeCamPlayerTF = Component_GetTransform(fakeCamPlayer);
                    void *fakeCamEnemyTF = Component_GetTransform(player);
                    if (fakeCamPlayerTF != NULL && fakeCamEnemyTF != NULL) {
                        Vector3 fakeCamPlayerPos = Transform_INTERNAL_GetPosition(fakeCamPlayerTF);
                        Vector3 fakeCamEnemyPos = Transform_INTERNAL_GetPosition(fakeCamEnemyTF);
                        float distance = Vector3::Distance(fakeCamPlayerPos, fakeCamEnemyPos);
                        if (player != local_player) {
                            if (distance > 1.6f) {
                                bool sameteams = get_isLocalTeam(player);
                                int pose = GetPhysXPose(player);
                                bool alive = get_isAlive(player);
                                bool visible = get_isVisible(player);
                                if (!sameteams && pose != 8 && alive && visible) {
                                    AimBot(local_player, player);
                                }
                            } else {
                                fakeEnemy = player;
                            }
                        }
                    }
                }
            }
        }
    }
    LateUpdate(player);
}
void(*NotifyServerGotForceSyncState)(void *_this, int param); // 0xA140D4
void _NotifyServerGotForceSyncState(void *_this, int param) {
    if (!MRZ.teleKill) // ghost
        return NotifyServerGotForceSyncState(_this, param);
}

void *hack_thread(void *) {
    ProcMap il2cppMap;
    do {
        il2cppMap = KittyMemory::getLibraryMap(libName);
        sleep(1);
    } while (!il2cppMap.isValid());

    Patches.wallPedra = MemoryPatch ("libunity.so", (Global.wallPedra), "\xC9\x3C\x8E\xBF\xC9\x3C\x8E\xBF\xC9\x3C\x8E\xBF\xC9\x3C\x8E\xBF", 16);
    Patches.nightMode = MemoryPatch("libunity.so", (Global.nightMode), "\x00\x00\x80\xBF", 4);
    Patches.medKit1 = MemoryPatch("libil2cpp.so", (Global.medKit1), "\x46\x0F\x43\xE3\x1E\xFF\x2F\xE1", 8);
    Patches.medKit2 = MemoryPatch("libil2cpp.so", (Global.medKit2), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
    Patches.medKit3 = MemoryPatch("libil2cpp.so", (Global.medKit3), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
    Patches.ghostHack = MemoryPatch("libil2cpp.so", (Global.ghostHack), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
    Patches.hdGraphic = MemoryPatch("libil2cpp.so", (Global.hdGraphic), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	
	Patches.rain1 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x02\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain2 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x04\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain3 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x06\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain4 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x08\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain5 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x0A\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain6 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x0C\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain7 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x0E\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain8 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x10\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain9 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x12\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain10 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x14\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain11 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x16\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.rain12 = MemoryPatch("libil2cpp.so", (Global.rainbullets), "\x18\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	
	Patches.nofiredelay = MemoryPatch("libil2cpp.so", (Global.nofiredelay), "\x00\x00\x00\x00", 4);
	Patches.shootinweater = MemoryPatch("libil2cpp.so", (Global.shootweater), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.ChangeWeaponDelay = MemoryPatch("libil2cpp.so", (Global.ChangeWeaponDelay), "\x00\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.FpsMode = MemoryPatch("libil2cpp.so", (Global.FpsMode), "\x0F\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.BangBang = MemoryPatch("libil2cpp.so",(Global.AntiFlashBack), "\x00\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.nograsstree = MemoryPatch("libil2cpp.so",(Global.nograsstree), "\x00\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.NoRecoil = MemoryPatch("libil2cpp.so",(Global.NoRecoil), "\x02\x00\xA0\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.WallHack = MemoryPatch("libunity.so",(Global.WallHack), "\x00\xC0\x79\xC4", 4);
	
	Patches.ByPass1 = MemoryPatch("libil2cpp.so",(Global.ByPass1), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass2 = MemoryPatch("libil2cpp.so",(Global.ByPass2), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass3 = MemoryPatch("libil2cpp.so",(Global.ByPass3), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass4 = MemoryPatch("libil2cpp.so",(Global.ByPass4), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass5 = MemoryPatch("libil2cpp.so",(Global.ByPass5), "\x01\xC0\xA0\xE3", 4);
	Patches.ByPass6 = MemoryPatch("libil2cpp.so",(Global.ByPass6), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass7 = MemoryPatch("libil2cpp.so",(Global.ByPass7), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass8 = MemoryPatch("libil2cpp.so",(Global.ByPass8), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass9 = MemoryPatch("libil2cpp.so",(Global.ByPass9), "\x00\xF0\x20\xE3", 4);
	Patches.ByPass10 = MemoryPatch("libil2cpp.so",(Global.ByPasss), "\x00\xF0\x20\xE3", 4);
	Patches.NoEliminate1 = MemoryPatch("libil2cpp.so",0x12819B4, "\x00\x00\xa0\xE3\x1E\xFF\x2F\xE1", 8);
	
	Patches.SpeedHackX1 = MemoryPatch("libil2cpp.so", 0xA05FF8,"\x81\x0f\x43\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.SpeedHackX2 = MemoryPatch("libil2cpp.so", 0xA05FF8,"\x82\x0f\x43\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.SpeedHackX3 = MemoryPatch("libil2cpp.so", 0xA05FF8,"\x83\x0f\x43\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.SpeedHackX4 = MemoryPatch("libil2cpp.so", 0xA05FF8,"\x84\x0f\x43\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.SpeedHackX5 = MemoryPatch("libil2cpp.so", 0xA05FF8,"\x85\x0f\x43\xE3\x1E\xFF\x2F\xE1", 8);
	Patches.WallHackCar = MemoryPatch("libil2cpp.so" , 0xA05FF8,"\x00\x00\xa0\xE3\x1E\xFF\x2F\xE1",8);
	Patches.GhostHackV2 = MemoryPatch("libil2cpp.so", (Global.get_tele), "\x00\x00\x48\x43\x1E\xFF\x2F\xE1", 8);

    Patches.Fly = MemoryPatch("libil2cpp.so", 0x290CE18,"\x00\x00\x7a\xc3", 4);
	
    return NULL;
}

void *MRZLoad(void *arg){
    while(true)
    {
        if(getRealOffset(0) != 0)
        {
            if(active)
            {
                HOOK(0xB95770, _LateUpdate, LateUpdate);
                HOOK(0xA14164, _NotifyServerGotForceSyncState, NotifyServerGotForceSyncState);

                pthread_exit(0);
            }
        }
        sleep(1);
    }
    return NULL;
}

extern "C"
{
JNIEXPORT void JNICALL Java_com_mrz_NativeCalls_init(JNIEnv *env, jclass obj)
{
    if(!launched)
        {
            launched = true;
            pthread_t MRZ_Thread;
            pthread_create(&MRZ_Thread, NULL, MRZLoad, NULL);

            pthread_t ptid;
            pthread_create(&ptid, NULL, hack_thread, NULL);
        }
}};