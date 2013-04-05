// Generated by IB v0.2.10 gem. Do not edit it manually
// Run `rake ib:open` to refresh

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <UIKit/UIKit.h>

@interface Camera





-(IBAction) initialize:(id) location;
-(IBAction) location;
-(IBAction) imagePickerControllerDidCancel:(id) picker;
-(IBAction) picker;
-(IBAction) dismiss;
-(IBAction) camera_device;
-(IBAction) media_type_to_symbol:(id) media_type;
-(IBAction) symbol_to_media_type:(id) symbol;
-(IBAction) error:(id) type;

@end


@interface ParserError: StandardError







@end


@interface NSNotificationCenter





-(IBAction) observers;
-(IBAction) unobserve:(id) observer;

@end


@interface NSURLRequest





-(IBAction) to_s;

@end


@interface UIView





-(IBAction) handle_gesture:(id) recognizer;

@end


@interface UIViewController





-(IBAction) content_frame;

@end


@interface Response





-(IBAction) initialize:(id) values;
-(IBAction) update:(id) values;
-(IBAction) to_s;
-(IBAction) update_status_description;

@end


@interface Query





-(IBAction) to_s;
-(IBAction) connectionDidFinishLoading:(id) connection;
-(IBAction) create_request;
-(IBAction) set_content_type;
-(IBAction) create_request_body;
-(IBAction) append_payload:(id) body;
-(IBAction) append_form_params:(id) body;
-(IBAction) append_files:(id) body;
-(IBAction) append_body_boundary:(id) body;
-(IBAction) create_url:(id) url_string;
-(IBAction) validate_url:(id) url;
-(IBAction) escape:(id) string;
-(IBAction) convert_payload_to_url;
-(IBAction) log:(id) message;
-(IBAction) escape_line_feeds:(id) hash;
-(IBAction) patch_nsurl_request:(id) request;
-(IBAction) call_delegator_with_response;

@end


@interface InvalidURLError: StandardError







@end


@interface InvalidFileError: StandardError







@end


@interface PeriodicTimer





-(IBAction) cancel;

@end


@interface Queue





-(IBAction) initialize;
-(IBAction) size;

@end


@interface Timer





-(IBAction) cancel;

@end


@interface RSSParser





-(IBAction) initialize;
-(IBAction) to_hash;

@end


@interface RSSItem





-(IBAction) initialize;
-(IBAction) to_hash;
-(IBAction) state;
-(IBAction) parserDidStartDocument:(id) parser;
-(IBAction) parserDidEndDocument:(id) parser;
-(IBAction) parserError;

@end


@interface InvalidPlayerType: StandardError







@end


@interface NilPlayerCallback: StandardError







@end


@interface Player





-(IBAction) stop;
-(IBAction) media_player;
-(IBAction) set_player_options:(id) options;

@end


@interface AppDelegate





-(IBAction) load_vc:(id) identifier;
-(IBAction) switch_to_vc:(id) vc;

@end


@interface FavoriteBudController: UIViewController

@property IBOutlet UITableView * strain;



-(IBAction) viewDidAppear:(id) animated;
-(IBAction) load_strains;
-(IBAction) viewStrain:(id) sender;

@end


@interface PicturesController: UIViewController

@property IBOutlet UIImageView * picture;



-(IBAction) viewDidAppear:(id) animated;
-(IBAction) load_image;
-(IBAction) previousImage:(id) sender;
-(IBAction) nextImage:(id) sender;
-(IBAction) goBack:(id) sender;

@end


@interface StrainController: UIViewController

@property IBOutlet UILabel * strain_name;
@property IBOutlet UILabel * strain_description;



-(IBAction) viewDidAppear:(id) animated;
-(IBAction) load_strain;
-(IBAction) goBack:(id) sender;
-(IBAction) takePicture:(id) sender;
-(IBAction) showPictures:(id) sender;

@end


@interface TakePictureController: UIViewController

@property IBOutlet UIImageView * picture_view;



-(IBAction) viewDidAppear:(id) animated;
-(IBAction) showCam:(id) sender;
-(IBAction) uploadImage:(id) sender;
-(IBAction) goBack:(id) sender;

@end



