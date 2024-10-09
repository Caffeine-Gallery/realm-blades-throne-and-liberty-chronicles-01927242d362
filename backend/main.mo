import Array "mo:base/Array";
import Text "mo:base/Text";

actor {
  // Types
  type BlogPost = {
    title: Text;
    content: Text;
    imageUrl: Text;
  };

  type Weapon = {
    name: Text;
    description: Text;
  };

  // State
  stable var blogPosts : [BlogPost] = [];
  stable var weapons : [Weapon] = [];

  // Initialize with some data
  public func init() : async () {
    blogPosts := [
      {
        title = "Welcome to Throne and Liberty";
        content = "Throne and Liberty is an exciting new MMORPG that combines epic fantasy with stunning visuals and innovative gameplay mechanics.";
        imageUrl = "https://example.com/throne_and_liberty_main.jpg";
      },
      {
        title = "Explore Vast Landscapes";
        content = "Immerse yourself in breathtaking environments, from lush forests to treacherous mountains, as you embark on your journey in Throne and Liberty.";
        imageUrl = "https://example.com/throne_and_liberty_landscape.jpg";
      }
    ];

    weapons := [
      { name = "Excalibur"; description = "Legendary sword of kings" },
      { name = "Thunderbolt Bow"; description = "Bow that shoots lightning arrows" },
      { name = "Dragonscale Shield"; description = "Impenetrable shield forged from dragon scales" },
      { name = "Shadowblade"; description = "Dagger that allows for stealth attacks" },
      { name = "Inferno Staff"; description = "Magical staff that conjures flames" }
    ];
  };

  // Query calls
  public query func getBlogPosts() : async [BlogPost] {
    blogPosts
  };

  public query func getWeapons() : async [Weapon] {
    weapons
  };
}
