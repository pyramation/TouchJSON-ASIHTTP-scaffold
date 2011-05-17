//
//  LoadDataViewController.m
//  networkScaffold
//
//  Created by Dan Lynch on 5/16/11.
//  Copyright 2011 UC Berkeley. All rights reserved.
//

#import "LoadDataViewController.h"
#import "LoadDataView.h"


@implementation LoadDataViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        LoadDataView * v = [[[LoadDataView alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
        [self setView:v];
        
        DataFetcher * f = [[DataFetcher alloc] initWithBase:@"http://www.xiize.com/users.json" andQueries:nil andDelegate:self];
        [f fetch];
        
        
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - DataFetcherDelegate

-(void) dataFetcher: (DataFetcher*) fetcher hasResponse: (id) response {
    
    NSLog(@"class [%@] %@", [[response class] description], response);
    
}

@end
